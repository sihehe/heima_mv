package com.itheima.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.itheima.ssm.domain.Permission;
import com.itheima.ssm.domain.Role;
import com.itheima.ssm.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/role")
public class RoleController {
    @Autowired
    private IRoleService roleService;
    @RequestMapping("/addPermissionToRole.do")
    public String addPermissionToRole(@RequestParam(name="roleId")String roleId,@RequestParam(name="ids",required = true)String[] permissionIds) throws Exception {
        roleService.addPermissionToRole(roleId,permissionIds);
        return "redirect:findAll.do";
    }
    //根据roleId查询role,并查询出可以添加的资源权限
    @RequestMapping("/findRoleByIdAndAllPermission.do")
    public ModelAndView findByIdAndAllPermission(@RequestParam(name="id",required = true)String roleId) throws Exception {
        ModelAndView mv=new ModelAndView();
        //根据roleId查询用户角色
        Role role = roleService.findById(roleId);
        //根据roleId查询可以添加的资源权限
        List<Permission> otherPermissions=roleService.findOtherPermissions(roleId);
        mv.addObject("role",role);
        mv.addObject("permissionList",otherPermissions);
        mv.setViewName("role-permission-add");
        return mv;
    }
    //查询所有的角色信息
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name="page",required = true,defaultValue = "1")Integer page,
                                @RequestParam(name="size",required = true,defaultValue = "4") Integer size)throws Exception{
        ModelAndView mv=new ModelAndView();
        List<Role> roleList=roleService.findAll(page, size);
        //PageInfo就是一个分页Bean
        PageInfo pageInfo=new PageInfo(roleList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("role-list");
        return mv;
    }
    //保存角色信息
    @RequestMapping("/save.do")
    public String save(Role role)throws Exception{
        roleService.save(role);
        return "redirect:findAll.do";
    }
    //删除角色信息
    @RequestMapping("/deleteRole.do")
    public String deleteRole(@RequestParam(name="id",required = true) String roleId) throws Exception {
        roleService.deleteRoleById(roleId);
        return "redirect:findAll.do";
    }

    //角色详情查询
    @RequestMapping("/findById.do")
    public ModelAndView findById(@RequestParam(name = "id", required = true) String roleId) throws Exception {
        ModelAndView mv = new ModelAndView();
        Role role = roleService.findById(roleId);
        mv.addObject("role", role);
        mv.setViewName("role-show");
        return mv;
    }
}
