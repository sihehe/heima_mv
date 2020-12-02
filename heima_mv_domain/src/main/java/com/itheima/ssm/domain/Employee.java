package com.itheima.ssm.domain;

public class Employee {
    private String id;//编号
    private String staffId;//职员编号
    private String staffName;//职员姓名
    private Integer staffAge;//职员年龄
    private String staffSex;//职员性别
    private String staffTel;//职员联系方式
    private Integer credentialsType;//身份类型
    private String credentialsTypeStr;
    private String credentialsNum;//身份证号
    private String  staffAddress;//居住地址
    private Integer staffStatus;//职员状态
    private String staffStatusStr;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getStaffId() {
        return staffId;
    }

    public void setStaffId(String staffId) {
        this.staffId = staffId;
    }

    public String getStaffName() {
        return staffName;
    }

    public void setStaffName(String staffName) {
        this.staffName = staffName;
    }

    public Integer getStaffAge() {
        return staffAge;
    }

    public void setStaffAge(Integer staffAge) {
        this.staffAge = staffAge;
    }

    public String getStaffSex() {
        return staffSex;
    }

    public void setStaffSex(String staffSex) {
        this.staffSex = staffSex;
    }

    public String getStaffTel() {
        return staffTel;
    }

    public void setStaffTel(String staffTel) {
        this.staffTel = staffTel;
    }

    public Integer getCredentialsType() {
        return credentialsType;
    }

    public void setCredentialsType(Integer credentialsType) {
        this.credentialsType = credentialsType;
    }

    public String getCredentialsTypeStr() {
        if (credentialsType==0) {
            // 状态 0 青少年 1 中年人 2 老年人
            credentialsTypeStr = "小孩";
        }else  if(credentialsType==1){
            credentialsTypeStr="成年人";
        }else  if(credentialsType==2){
            credentialsTypeStr="老年人";
        }
        return credentialsTypeStr;
    }

    public void setCredentialsTypeStr(String credentialsTypeStr) {
        this.credentialsTypeStr = credentialsTypeStr;
    }

    public String getCredentialsNum() {
        return credentialsNum;
    }

    public void setCredentialsNum(String credentialsNum) {
        this.credentialsNum = credentialsNum;
    }

    public String getStaffAddress() {
        return staffAddress;
    }

    public void setStaffAddress(String staffAddress) {
        this.staffAddress = staffAddress;
    }

    public Integer getStaffStatus() {
        return staffStatus;
    }

    public void setStaffStatus(Integer staffStatus) {
        this.staffStatus = staffStatus;
    }

    public String getStaffStatusStr() {
        if (staffStatus==0) {
            // 状态 0 离职 1 在职
            staffStatusStr = "离职";
        }else  if(staffStatus==1){
            staffStatusStr="在职";
        }
        return staffStatusStr;
    }

    public void setStaffStatusStr(String staffStatusStr) {
        this.staffStatusStr = staffStatusStr;
    }
}
