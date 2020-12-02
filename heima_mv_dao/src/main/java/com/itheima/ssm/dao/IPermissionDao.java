package com.itheima.ssm.dao;

import com.itheima.ssm.domain.Permission;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface IPermissionDao {
    //根据id查询权限信息
    @Select("select * from permission where id in(select permissionId from role_permission where roleId=#{id})")
    public List<Permission> findPermissionByRoleId(String id) throws Exception;
    //查询资源权限信息
    @Select("select * from permission")
    public List<Permission> findAll()throws Exception;
    //保存资源权限信息
    @Insert("insert into permission(permissionName,url) values(#{permissionName},#{url})")
    public void save(Permission permission)throws Exception;
    //通过id查询资源权限信息
    @Select("select * from permission where id=#{id}")
    Permission findById(String id) throws Exception;
    //删除资源权限信息
    @Delete("delete from role_permission where permissionId=#{id}")
    void deleteFromRole_Permission(String id) throws Exception;
    @Delete("delete from permission where id=#{id}")
    void deleteById(String id) throws Exception ;
}
