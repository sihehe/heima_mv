package com.itheima.ssm.domain;

public class Tool {
    private String id;     //编号
    private String toolId;  //车牌号
    private String toolDriver;//车辆司机
    private String toolName;//车辆名称
    private String toolImg;//车辆图片
    private double toolCz;//车载
    private Integer toolNum;//车辆数目
    private String  toolDesc;//车辆描述

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getToolId() {
        return toolId;
    }
    public void setToolId(String toolId) {
        this.toolId = toolId;
    }

    public String getToolDriver() {
        return toolDriver;
    }

    public void setToolDriver(String toolDriver) {
        this.toolDriver = toolDriver;
    }

    public String getToolName() {
        return toolName;
    }

    public void setToolName(String toolName) {
        this.toolName = toolName;
    }

    public String getToolImg() {
        return toolImg;
    }

    public void setToolImg(String toolImg) {
        this.toolImg = toolImg;
    }

    public double getToolCz() {
        return toolCz;
    }

    public void setToolCz(double toolCz) {
        this.toolCz = toolCz;
    }

    public Integer getToolNum() {
        return toolNum;
    }

    public void setToolNum(Integer toolNum) {
        this.toolNum = toolNum;
    }

    public String getToolDesc() {
        return toolDesc;
    }

    public void setToolDesc(String toolDesc) {
        this.toolDesc = toolDesc;
    }
}
