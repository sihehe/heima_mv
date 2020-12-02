package com.itheima.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.itheima.ssm.dao.IEmployeeDao;
import com.itheima.ssm.dao.IOrderDao;
import com.itheima.ssm.domain.Employee;
import com.itheima.ssm.domain.Order;
import com.itheima.ssm.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class OrderServiceImpl implements IOrderService {
    @Autowired
    private IOrderDao orderDao;
    @Autowired
    private IEmployeeDao employeeDao;
    //查询所有的订单信息
    @Override
    public List<Order> findAll() throws Exception {
        return orderDao.findAll();
    }
    @Override
    public List<Order> findAll(int page,int size) throws Exception {
        //参数pageNum是页码值参数pageSize代表是每页显示条数
        PageHelper.startPage(page,size);
        return orderDao.findAll();
    }
    //通过id查询订单信息
    @Override
    public Order findById(String ordersId) throws Exception {
        return orderDao.findById(ordersId);
    }
    //保存新添加的订单信息
    @Override
    public void save(Order order) throws Exception {
        orderDao.save(order);
    }

    //删除订单信息
    @Override
    public void deleteOrderById(String orderId) throws Exception {
        //先查询该订单是否安排了职工负责
        List<Employee> employeeList = employeeDao.findByOrderId(orderId);
        if(employeeList!=null){
            //先从order_emloyee表中删除订单
            orderDao.deleteFromOrderAndEmployeeByOrderId(orderId);
        }
        //再从orders表中删除订单
        orderDao.deleteOrdersById(orderId);
    }
    //更新订单信息
    @Override
    public void updateOrder(Order order) throws Exception {
        orderDao.updateOrders(order);
    }
}
