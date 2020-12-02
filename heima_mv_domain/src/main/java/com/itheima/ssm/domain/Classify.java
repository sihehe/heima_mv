package com.itheima.ssm.domain;

import com.itheima.ssm.utils.DateUtils;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;
/*
 *服务项目信息
 */
public class Classify implements Serializable{
    private String id;   //主键
    private String classifyNum; //编号 唯一
    private String classifyName;//项目名称
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    private Date    classifyTime; //创建时间
    private String  classifyTimeStr;
    private Double classifyPath;//服务范围 单位m
    private Double classifyPrice;//服务起价
    private String  classifyDesc;//项目描述
    private Integer classifyStatus;//状态 0 关闭 1 开启
    private String  classifyStatusStr;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getClassifyNum() {
        return classifyNum;
    }

    public void setClassifyNum(String classifyNum) {
        this.classifyNum = classifyNum;
    }

    public String getClassifyName() {
        return classifyName;
    }

    public void setClassifyName(String classifyName) {
        this.classifyName = classifyName;
    }

    public Date getClassifyTime() {
        return classifyTime;
    }

    public void setClassifyTime(Date classifyTime) {
        this.classifyTime = classifyTime;
    }

    public String getClassifyTimeStr() {
        if(classifyTime!=null){
            classifyTimeStr= DateUtils.date2String(classifyTime,"yyyy-MM-dd HH:mm:ss");
        }
        return classifyTimeStr;
    }

    public void setClassifyTimeStr(String classifyTimeStr) {
        this.classifyTimeStr = classifyTimeStr;
    }

    public Double getClassifyPath() {
        return classifyPath;
    }

    public void setClassifyPath(Double classifyPath) {
        this.classifyPath = classifyPath;
    }

    public Double getClassifyPrice() {
        return classifyPrice;
    }

    public void setClassifyPrice(Double classifyPrice) {
        this.classifyPrice = classifyPrice;
    }

    public String getClassifyDesc() {
        return classifyDesc;
    }

    public void setClassifyDesc(String classifyDesc) {
        this.classifyDesc = classifyDesc;
    }

    public Integer getClassifyStatus() { return classifyStatus;
    }

    public void setClassifyStatus(Integer classifyStatus) {
        this.classifyStatus = classifyStatus;
    }

    public String getClassifyStatusStr() {
        if (classifyStatus != null) {
            // 状态 0 关闭 1 开启
            if(classifyStatus==0)
                classifyStatusStr="暂停";
            if(classifyStatus==1)
                classifyStatusStr="运营";
        }
        return classifyStatusStr;
    }

    public void setClassifyStatusStr(String classifyStatusStr) {
        this.classifyStatusStr = classifyStatusStr;
    }

    @Override
    public String toString() {
        return "Classify{" +
                "id='" + id + '\'' +
                ", classifyNum='" + classifyNum + '\'' +
                ", classifyName='" + classifyName + '\'' +
                ", classifyTime=" + classifyTime +
                ", classifyTimeStr='" + classifyTimeStr + '\'' +
                ", classifyPath=" + classifyPath +
                ", classifyPrice=" + classifyPrice +
                ", classifyDesc='" + classifyDesc + '\'' +
                ", classifyStatus=" + classifyStatus +
                ", classifyStatusStr='" + classifyStatusStr + '\'' +
                '}';
    }
}
