package com.itheima.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.itheima.ssm.domain.Classify;
import com.itheima.ssm.service.IClassifyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/classify")
public class ClassifyController {
    @Autowired
    private IClassifyService classifyService;

    //查询所有的服务项目信息
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name = "page", required = true, defaultValue = "1") Integer page,
                                @RequestParam(name = "size", required = true, defaultValue = "4") Integer size) throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Classify> classifyList = classifyService.findAll(page, size);
        //PageInfo就是一个分页Bean
        PageInfo pageInfo = new PageInfo(classifyList);
        mv.addObject("pageInfo", pageInfo);
        mv.setViewName("classify-list");
        return mv;
    }

    //服务项目的添加
    @RequestMapping("/save.do")
    public String save(Classify classify) throws Exception {
        classifyService.save(classify);
        return "redirect:findAll.do";
    }

    //通过id查询服务项目
    @RequestMapping("/findById.do")
    public ModelAndView findById(@RequestParam(name = "id", required = true) String classifyId) throws Exception {
        ModelAndView mv = new ModelAndView();
        Classify classify = classifyService.findById(classifyId);
        mv.addObject("classify", classify);
        mv.setViewName("classify-show");
        return mv;
    }
    //删除服务项目
    @RequestMapping("/deleteClassify.do")
    public String deleteClassify(@RequestParam(name = "id", required = true) String classifyId) throws Exception {
        classifyService.deleteClassifyById(classifyId);
        return "redirect:findAll.do";
    }
    //服务项目的修改
    @RequestMapping("/update.do")
    public ModelAndView update(@RequestParam(name = "id", required = true) String classifyId) throws Exception {
        ModelAndView mv = new ModelAndView();
        Classify classify = classifyService.findById(classifyId);
        mv.addObject("classify", classify);
        mv.setViewName("classify-update");
        return mv;
    }
    /**
     * 获取项目类型信息
     */
    @RequestMapping("/getClassify.do")
    public String getClassify(Classify classify) throws Exception {
        System.out.println(classify);
        classifyService.updateClassify(classify);
        return "redirect:findAll.do";
    }
}

