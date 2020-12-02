package com.itheima.ssm.service;

import com.itheima.ssm.domain.Order;

import java.util.List;

public interface IOrderService {
    //查询所有订单
    public List<Order> findAll() throws Exception;
    public List<Order> findAll(int page,int size) throws Exception;
    //通过id查询订单信息
    public Order findById(String ordersId) throws Exception;
    //保存新添加的订单信息
    public void save(Order order)throws Exception;
    //通过orderId删除订单
    public void deleteOrderById(String orderId) throws Exception;
    //更新订单信息
    public void updateOrder(Order order)throws Exception;
}
