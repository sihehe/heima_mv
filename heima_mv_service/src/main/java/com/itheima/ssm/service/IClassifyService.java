package com.itheima.ssm.service;

import com.itheima.ssm.domain.Classify;

import java.util.List;

public interface IClassifyService {
    //查询所有的服务项目信息
    public List<Classify> findAll() throws Exception;
    public List<Classify> findAll(int page,int size) throws Exception;
    //保存新添加的服务项目
    public void save(Classify classify)throws Exception;
    //通过id查询服务项目信息
    public Classify findById(String classifyId) throws Exception;
    //通过classifyId删除服务项目
    public void deleteClassifyById(String classifyId) throws Exception;
    //更新项目信息
    public void updateClassify(Classify classify)throws Exception;
}
