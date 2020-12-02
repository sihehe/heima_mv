package com.itheima.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.itheima.ssm.domain.Message;
import com.itheima.ssm.domain.SysLog;
import com.itheima.ssm.service.IMessageService;
import com.itheima.ssm.service.ISysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/message")
public class MessageController {
    @Autowired
    private IMessageService messageService;
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name="page",required = true,defaultValue = "1")Integer page,
                                @RequestParam(name="size",required = true,defaultValue = "4") Integer size)throws Exception{
        ModelAndView mv=new ModelAndView();
        List<Message> messages=messageService.findAll(page, size);
        System.out.println(messages);
        //PageInfo就是一个分页Bean
        PageInfo pageInfo=new PageInfo(messages);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("message-list");
        return mv;
    }
    //留言的添加
    @RequestMapping("/save.do")
    public String save(Message message) throws Exception {
        messageService.save(message);
        return "redirect:findAll.do";
    }
    //删除留言
    @RequestMapping("/deleteMessage.do")
    public String deleteMessage(@RequestParam(name = "id", required = true) String messageId) throws Exception {
        messageService.deleteMessageById(messageId);
        return "redirect:findAll.do";
    }
    //回复留言
    @RequestMapping("/update.do")
    public ModelAndView update(@RequestParam(name = "id", required = true) String messageId) throws Exception {
        ModelAndView mv = new ModelAndView();
        Message message= messageService.findById(messageId);
        mv.addObject("message", message);
        mv.setViewName("message-update");
        return mv;
    }
    /**
     * 获取留言信息
     */
    @RequestMapping("/getMessage.do")
    public String getMessage(Message message) throws Exception {
        System.out.println(message);
        messageService.updateMessage(message);
        return "redirect:findAll.do";
    }
}
