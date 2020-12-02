package com.itheima.ssm.service;

import com.itheima.ssm.domain.SysLog;

import java.util.List;

public interface ISysLogService {
    //保存日志信息
    public void save(SysLog sysLog) throws Exception;
    //查询所有的日志信息
    public List<SysLog> findAll(int page,int size)throws Exception;
}
