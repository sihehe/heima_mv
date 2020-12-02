package com.itheima.ssm.service;

import com.itheima.ssm.domain.Permission;
import com.itheima.ssm.domain.Role;

import java.util.List;

public interface IRoleService {
    //查询角色信息
    List<Role> findAll(int page,int size) throws Exception;
    //保存角色信息
    public void save(Role role)throws Exception;
    //通过roleId查询用户角色
    public Role findById(String roleId)throws Exception;
    //通过roleId查询其他可以添加的资源权限
    List<Permission> findOtherPermissions(String roleId)throws Exception;
    //根据指定的roleId，保存选择的权限id
    public void addPermissionToRole(String roleId, String[] permissionIds)throws Exception;
    //通过roleId删除用户角色
    public void deleteRoleById(String roleId) throws Exception;
}
