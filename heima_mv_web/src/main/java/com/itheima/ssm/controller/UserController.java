package com.itheima.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.itheima.ssm.domain.Role;
import com.itheima.ssm.domain.UserInfo;
import com.itheima.ssm.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private IUserService userService;

    @Autowired
    private HttpServletRequest request;
    //查询用户以及用户可以添加的角色
    @RequestMapping("/findUserByIdAndAllRole.do")
    public ModelAndView findUserByIdAndAllRole(@RequestParam(name="id",required=true) String userId)throws Exception{
        ModelAndView mv=new ModelAndView();
         //1.根据用户id查询用户
        UserInfo userInfo = userService.findById(userId);
        //2.根据用户id查询可以添加的角色
        List<Role> otherRoles=userService.findOtherRoles(userId);
        mv.addObject("user",userInfo);
        mv.addObject("roleList",otherRoles);
        mv.setViewName("user-role-add");
        return mv;
    }
    //给用户添加角色
    @RequestMapping("/addRoleToUser.do")
    public String addRoleToUser(@RequestParam(name="userId",required = true)String userId,@RequestParam(name="ids",required = true)String[] roleIds) throws Exception {
         userService.addRoleToUser(userId,roleIds);
         return "redirect:findAll.do";
    }
    //通过id查询指定用户
    @RequestMapping("/findById.do")
    public ModelAndView findById(String id) throws Exception {
        ModelAndView mv=new ModelAndView();
        UserInfo userInfo=userService.findById(id);
        mv.addObject("user",userInfo);
        mv.setViewName("user-show");
        return mv;
    }
    //查询用户信息
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name="page",required = true,defaultValue = "1")Integer page,
                                @RequestParam(name="size",required = true,defaultValue = "4") Integer size) throws Exception{
      ModelAndView mv=new ModelAndView();
      List<UserInfo> userList=userService.findAll(page, size);
        //PageInfo就是一个分页Bean
        PageInfo pageInfo=new PageInfo(userList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("user-list");
        return mv;
    }
    //保存用户信息
    @RequestMapping("/save.do")
    @PreAuthorize("authentication.principal.username=='Tom'")
    public String save(UserInfo userInfo)throws Exception{
        userService.save(userInfo);
        return "redirect:findAll.do";
    }
    //修改用户密码
    @RequestMapping("/updatePassword.do")
    public ModelAndView updatePassword()throws Exception{
        //获取当前操作的用户
        SecurityContext context = SecurityContextHolder.getContext();//从上下文中获了当前登录的用户
        Authentication authentication = context.getAuthentication();
        User user =(User) authentication.getPrincipal();
        //获取当前用户的用户名
        String username = user.getUsername();
        String password =request.getParameter("newPassword"); //获取前台输入的密码
        userService.updatePassword(username,password);
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("redirect:/login.jsp");
        return modelAndView;
    }
}
