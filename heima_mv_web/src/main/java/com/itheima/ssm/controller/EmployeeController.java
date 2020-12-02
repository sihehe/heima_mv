package com.itheima.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.itheima.ssm.domain.Classify;
import com.itheima.ssm.domain.Employee;
import com.itheima.ssm.service.IClassifyService;
import com.itheima.ssm.service.IEmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
    @Autowired
    private IEmployeeService employeeService;

    //查询所有的员工信息
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name="page",required = true,defaultValue = "1")Integer page,
                                @RequestParam(name="size",required = true,defaultValue = "4") Integer size) throws Exception{
        ModelAndView mv=new ModelAndView();
        List<Employee> employeeList = employeeService.findAll(page, size);
        //PageInfo就是一个分页Bean
        PageInfo pageInfo=new PageInfo(employeeList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("employee-list");
        return mv;
    }
    //员工的添加
    @RequestMapping("/save.do")
    public String save(Employee employee)throws Exception{
        employeeService.save(employee);
        return "redirect:findAll.do";
    }
    //通过id查询员工信息
    @RequestMapping("/findById.do")
    public ModelAndView findById(@RequestParam(name="id",required = true)String employeeId)throws Exception{
        ModelAndView mv=new ModelAndView();
        Employee employee=employeeService.findById(employeeId);
        mv.addObject("employee",employee);
        mv.setViewName("employee-show");
        return mv;
    }
    //删除员工信息
    @RequestMapping("/deleteEmployee.do")
    public String deleteEmployee(@RequestParam(name="id",required = true) String employeeId) throws Exception {
        employeeService.deleteEmployeeById(employeeId);
        return "redirect:findAll.do";
    }
    //员工信息的修改
    @RequestMapping("/update.do")
    public ModelAndView update(@RequestParam(name = "id", required = true) String employeeId) throws Exception {
        ModelAndView mv = new ModelAndView();
        Employee employee = employeeService.findById(employeeId);
        mv.addObject("employee", employee);
        List<Employee> employeeList = employeeService.findAll();
        PageInfo pageInfo_employee=new PageInfo(employeeList);
        mv.addObject("pageInfo_employee",pageInfo_employee);
        mv.setViewName("employee-update");
        return mv;
    }
    /**
     * 获取员工信息
     */
    @RequestMapping("/getEmployee.do")
    public String getClassify(Employee employee) throws Exception {
        System.out.println(employee);
        employeeService.updateEmployee(employee);
        return "redirect:findAll.do";
    }
}
