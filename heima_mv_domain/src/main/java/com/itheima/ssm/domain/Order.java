package com.itheima.ssm.domain;

import com.itheima.ssm.utils.DateUtils;
import org.springframework.format.annotation.DateTimeFormat;


import java.util.Date;
import java.util.List;

public class Order {
    private String id;   //id
    private String orderNum; //订单编号
    private String orderName;//下单客户
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    private Date   orderTime;  //下单时间
    private String orderTimeStr;
    private double orderMile;//订单距离
    private String orderTel;//联系方式
    private int orderLevel;//客户级别
    private String orderLevelStr;
    private String orderAddress;//居住地址
    private String orderMaddress;//搬家地址
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    private Date   orderDate;//搬家时间
    private String orderDateStr;
    private int    orderStatus; //订单状态
    private String orderStatusStr;
    private String classifyId;
    private String toolId;
    private Classify classify;//服务项目
    private List<Employee> staffs;//订单负责人
    private Tool tool;//服务车型
    private Integer payType;//支付类型
    private String payTypeStr;
    private String orderDesc;//下单客户留言

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(String orderNum) {
        this.orderNum = orderNum;
    }

    public String getOrderName() {
        return orderName;
    }

    public void setOrderName(String orderName) {
        this.orderName = orderName;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public String getOrderTimeStr() {
        if(orderTime!=null){
            orderTimeStr= DateUtils.date2String(orderTime,"yyyy-MM-dd HH:mm:ss");
        }
        return orderTimeStr;
    }

    public void setOrderTimeStr(String orderTimeStr) {
        this.orderTimeStr = orderTimeStr;
    }

    public double getOrderMile() {
        return orderMile;
    }

    public void setOrderMile(double orderMile) {
        this.orderMile = orderMile;
    }

    public String getOrderTel() {
        return orderTel;
    }

    public void setOrderTel(String orderTel) {
        this.orderTel = orderTel;
    }

    public int getOrderLevel() {
        return orderLevel;
    }

    public void setOrderLevel(int orderLevel) {
        this.orderLevel = orderLevel;
    }

    public String getOrderLevelStr() {
        if (orderLevel==0) {
            // 状态 0 普通用户 1 vip 2 高级vip 3 超级vip
            orderLevelStr = "普通用户";
        }else  if(orderLevel==1){
            orderLevelStr="vip";
        }else  if(orderLevel==2){
            orderLevelStr="高级vip";
        }else  if(orderLevel==3){
            orderLevelStr="超级vip";
        }
        return orderLevelStr;
    }

    public void setOrderLevelStr(String orderLevelStr) {
        this.orderLevelStr = orderLevelStr;
    }

    public String getOrderAddress() {
        return orderAddress;
    }

    public void setOrderAddress(String orderAddress) {
        this.orderAddress = orderAddress;
    }

    public String getOrderMaddress() {
        return orderMaddress;
    }

    public void setOrderMaddress(String orderMaddress) {
        this.orderMaddress = orderMaddress;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getOrderDateStr() {
        if(orderDate!=null){
            orderDateStr= DateUtils.date2String(orderDate,"yyyy-MM-dd HH:mm:ss");
        }
        return orderDateStr;
    }

    public void setOrderDateStr(String orderDateStr) {
        this.orderDateStr = orderDateStr;
    }

    public int getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(int orderStatus) {
        this.orderStatus = orderStatus;
    }

    public String getOrderStatusStr() {
        if (orderStatus==0) {
            // 状态 0 未支付 1 已支付 2 已取消 3 待处理
            orderStatusStr = "未支付";
        }else  if(orderStatus==1){
            orderStatusStr="已支付";
        }else  if(orderStatus==2){
            orderStatusStr="已取消";
        }else  if(orderStatus==3){
            orderStatusStr="待处理";
        }
        return orderStatusStr;
    }

    public void setOrderStatusStr(String orderStatusStr) {
        this.orderStatusStr = orderStatusStr;
    }

    public String getClassifyId() {
        return classifyId;
    }

    public void setClassifyId(String classifyId) {
        this.classifyId = classifyId;
    }

    public String getToolId() {
        return toolId;
    }

    public void setToolId(String toolId) {
        this.toolId = toolId;
    }

    public Classify getClassify() {
        return classify;
    }

    public void setClassify(Classify classify) {
        this.classify = classify;
    }

    public List<Employee> getStaffs() {
        return staffs;
    }

    public void setStaffs(List<Employee> staffs) {
        this.staffs = staffs;
    }

    public Tool getTool() {
        return tool;
    }

    public void setTool(Tool tool) {
        this.tool = tool;
    }

    public Integer getPayType() {
        return payType;
    }

    public void setPayType(Integer payType) {
        this.payType = payType;
    }

    public String getPayTypeStr() {
        if (payType==0) {
            // 状态 0 微信 1 支付宝 2 现金
            payTypeStr = "微信";
        }else  if(payType==1){
            payTypeStr="支付宝";
        }else  if(payType==2){
            payTypeStr="现金";
        }
        return payTypeStr;
    }

    public void setPayTypeStr(String payTypeStr) {
        this.payTypeStr = payTypeStr;
    }

    public String getOrderDesc() {
        return orderDesc;
    }

    public void setOrderDesc(String orderDesc) {
        this.orderDesc = orderDesc;
    }
}
