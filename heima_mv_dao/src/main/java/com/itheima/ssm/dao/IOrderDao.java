package com.itheima.ssm.dao;

import com.itheima.ssm.domain.Classify;
import com.itheima.ssm.domain.Order;
import com.itheima.ssm.domain.Tool;
import org.apache.ibatis.annotations.*;
import org.springframework.web.bind.annotation.DeleteMapping;


import java.util.List;

public interface IOrderDao {
    //查询所有订单
    @Select("select * from orders")
    @Results({
            @Result(id=true,property="id",column="id"),
            @Result(property="orderNum",column="orderNum"),
            @Result(property="orderName",column="orderName"),
            @Result(property="orderMile",column="orderMile"),
            @Result(property="orderTime",column="orderTime"),
            @Result(property="orderStatus",column="orderStatus"),
            @Result(property="classify",column="classifyId",javaType = Classify.class,one=@One(select="com.itheima.ssm.dao.IClassifyDao.findById")),
            @Result(property="tool",column="toolId",javaType = Tool.class,one=@One(select="com.itheima.ssm.dao.IToolDao.findById"))
    })
    public List<Order> findAll() throws Exception;
    @Select("select * from orders where id=#{ordersId}")
    @Results({
            @Result(id=true,property="id",column="id"),
            @Result(property="orderNum",column="orderNum"),
            @Result(property="orderTime",column="orderTime"),
            @Result(property="orderStatus",column="orderStatus"),
            @Result(property="peopleCount",column="peopleCount"),
            @Result(property="payType",column="payType"),
            @Result(property="orderDesc",column="orderDesc"),
            @Result(property="classify",column="classifyId",javaType = Classify.class,one=@One(select="com.itheima.ssm.dao.IClassifyDao.findById")),
            @Result(property = "tool",column="toolId",javaType = Tool.class,one=@One(select="com.itheima.ssm.dao.IToolDao.findById")),
            //多对多关系--中间表
            @Result(property = "staffs",column = "id",javaType = java.util.List.class,many=@Many(select="com.itheima.ssm.dao.IEmployeeDao.findByOrderId"))
    })
    //根据id查询订单信息
    public Order findById(String ordersId)throws Exception;

    //保存新添加的服务订单信息
    @Insert("insert into orders(orderNum,orderName,orderTime,orderMile,orderTel,orderLevel,orderAddress,orderMaddress,orderDate,orderStatus,payType,orderDesc,classifyId,toolId) values(#{orderNum},#{orderName},#{orderTime},#{orderMile},#{orderTel},#{orderLevel},#{orderAddress},#{orderMaddress},#{orderDate},#{orderStatus},#{payType},#{orderDesc},#{classifyId},#{toolId})")
    public void save(Order order)throws Exception;

    //删除订单
    @Delete("delete from order_employee where orderId=#{orderId}")
    public void deleteFromOrderAndEmployeeByOrderId(String orderId)throws Exception;
    @Delete("delete from orders where id=#{orderId}")
    public void deleteOrdersById(String orderId)throws Exception;

    //更新订单项目
    @Update("update orders set orderNum=#{orderNum},orderName=#{orderName},orderTime=#{orderTime,jdbcType=DATE},orderMile=#{orderMile},orderTel=#{orderTel},orderLevel=#{orderLevel},orderAddress=#{orderAddress},orderMaddress=#{orderMaddress},orderDate=#{orderDate,jdbcType=DATE}," +
            "orderStatus=#{orderStatus},payType=#{payType},orderDesc=#{orderDesc},classifyId=#{classifyId},toolId=#{toolId} where id=#{id,jdbcType=VARCHAR}")
    public void updateOrders(Order order)throws Exception;
}
