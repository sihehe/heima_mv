package com.itheima.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.itheima.ssm.domain.Classify;
import com.itheima.ssm.domain.Order;
import com.itheima.ssm.domain.Tool;
import com.itheima.ssm.service.IClassifyService;
import com.itheima.ssm.service.IOrderService;
import com.itheima.ssm.service.IToolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Controller
@RequestMapping("/order")
public class OrderController {
     @Autowired
     private IOrderService orderService;
     @Autowired
     private IClassifyService classifyService;
     @Autowired
     private IToolService toolService;
     //查询所有订单
     @RequestMapping("/findAll.do")
     public ModelAndView findAll(@RequestParam(name="page",required = true,defaultValue = "1")Integer page,
                                 @RequestParam(name="size",required = true,defaultValue = "4") Integer size) throws Exception{
         ModelAndView mv=new ModelAndView();
         List<Order> orderList=orderService.findAll(page, size);
         //PageInfo就是一个分页Bean
         PageInfo pageInfo=new PageInfo(orderList);
         mv.addObject("pageInfo",pageInfo);
         mv.setViewName("order-list");
         return mv;
     }
    //查询所有classifyId和toolId
    @RequestMapping("/findAllId.do")
    public ModelAndView findAllId() throws Exception{
        ModelAndView mv=new ModelAndView();

        List<Classify> classifyList=classifyService.findAll();
        //PageInfo就是一个分页Bean
        PageInfo pageInfo=new PageInfo(classifyList);
        mv.addObject("pageInfo",pageInfo);

        List<Tool>  toolList = toolService.findAll();
        PageInfo pageInfo1=new PageInfo(toolList);
        mv.addObject("pageInfo1",pageInfo1);

        mv.setViewName("order-add");
        return mv;
    }

    //通过id查询订单
    @RequestMapping("/findById.do")
    public ModelAndView findById(@RequestParam(name="id",required = true)String ordersId)throws Exception{
        ModelAndView mv=new ModelAndView();
        Order orders=orderService.findById(ordersId);
        mv.addObject("orders",orders);
        mv.setViewName("order-show");
        return mv;
    }
    //订单的添加
    @RequestMapping("/save.do")
    public String save(Order order)throws Exception{

        orderService.save(order);
        return "redirect:findAll.do";
    }

    //删除订单
    @RequestMapping("/deleteOrder.do")
    public String deleteOrder(@RequestParam(name = "id", required = true) String orderId) throws Exception {
        orderService.deleteOrderById(orderId);
        return "redirect:findAll.do";
    }
    //订单的修改
    @RequestMapping("/update.do")
    public ModelAndView update(@RequestParam(name = "id", required = true) String orderId) throws Exception {
        ModelAndView mv = new ModelAndView();
        Order order = orderService.findById(orderId);
        mv.addObject("order", order);

        List<Classify> classifyList=classifyService.findAll();
        //PageInfo就是一个分页Bean
        PageInfo pageInfo_classify=new PageInfo(classifyList);
        mv.addObject("pageInfo_classify",pageInfo_classify);

        List<Tool>  toolList = toolService.findAll();
        PageInfo pageInfo_tool=new PageInfo(toolList);
        mv.addObject("pageInfo_tool",pageInfo_tool);

        mv.setViewName("order-update");
        return mv;
    }
    /**
     * 获取订单信息
     */
    @RequestMapping("/getOrder.do")
    public String getOrder(Order order) throws Exception {
        System.out.println(order);
        orderService.updateOrder(order);
        return "redirect:findAll.do";
    }
}
