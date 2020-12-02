package com.itheima.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.itheima.ssm.domain.Tool;
import com.itheima.ssm.service.IToolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/tool")
public class ToolController {
    @Autowired
    private IToolService toolService;

    //查询所有的车辆信息
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name="page",required = true,defaultValue = "1")Integer page,
                                @RequestParam(name="size",required = true,defaultValue = "4") Integer size) throws Exception{
        ModelAndView mv=new ModelAndView();
        List<Tool> toolList = toolService.findAll(page, size);
        //PageInfo就是一个分页Bean
        PageInfo pageInfo=new PageInfo(toolList);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("tool-list");
        return mv;
    }
    //车辆的添加
    @RequestMapping("/save.do")
    public String save(Tool tool)throws Exception{
        toolService.save(tool);
        return "redirect:findAll.do";
    }
    //删除车辆信息
    @RequestMapping("/deleteTool.do")
    public String deleteTool(@RequestParam(name="id",required = true) String toolId) throws Exception {
        toolService.deleteToolById(toolId);
        return "redirect:findAll.do";
    }
    //车辆信息的修改
    @RequestMapping("/update.do")
    public ModelAndView update(@RequestParam(name = "id", required = true) String toolId) throws Exception {
        ModelAndView mv = new ModelAndView();
        Tool tool = toolService.findById(toolId);
        mv.addObject("tool", tool);
        mv.setViewName("tool-update");
        return mv;
    }
    /**
     * 获取车辆信息
     */
    @RequestMapping("/getTool.do")
    public String getTool(Tool tool) throws Exception {
        System.out.println(tool);
        toolService.updateTool(tool);
        return "redirect:findAll.do";
    }
}
