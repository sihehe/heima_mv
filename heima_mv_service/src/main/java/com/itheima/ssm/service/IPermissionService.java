package com.itheima.ssm.service;

import com.itheima.ssm.domain.Permission;

import java.util.List;

public interface IPermissionService {
    //查询资源权限信息
    List<Permission> findAll(int page,int size) throws Exception;
    //保存资源权限信息
    public void save(Permission permission)throws Exception;
    //通过id查询资源权限信息
    public Permission findById(String id) throws Exception;
    //删除资源权限信息
    public void deleteById(String id) throws Exception;
}
