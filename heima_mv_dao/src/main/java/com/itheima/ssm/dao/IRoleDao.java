package com.itheima.ssm.dao;

import com.itheima.ssm.domain.Permission;
import com.itheima.ssm.domain.Role;
import org.apache.ibatis.annotations.*;

import java.util.List;

public interface IRoleDao {
    //根据用户id查询出所有的对应的角色
    @Select("select * from role where id in(select roleId from users_role where userId=#{userId})")
    @Results({
            @Result(id=true,property = "id",column="id"),
            @Result(property = "roleName",column="roleName"),
            @Result(property = "roleDesc",column="roleDesc"),
            @Result(property = "permissions",column="id",javaType = List.class,many=@Many(select="com.itheima.ssm.dao.IPermissionDao.findPermissionByRoleId"))
    })
    public List<Role> findRoleByUserId(String userId)throws Exception;
    //查询所有角色信息
    @Select("select * from role")
    public List<Role> findAll()throws Exception;
    //保存角色信息
    @Insert("insert into role(roleName,roleDesc) values(#{roleName},#{roleDesc})")
    public void save(Role role)throws Exception;
    //通过roleId查询用户角色
    @Select("select * from role where id=#{roleId}")
    public Role findById(String roleId)throws Exception;
    //通过roleId查询可以添加的资源权限
    @Select("select * from permission where id not in(select permissionId from role_permission where roleId=#{roleId})")
    public List<Permission> findOtherPermissons(String roleId)throws Exception;
    @Insert("insert into role_permission(roleId,permissionId)values(#{roleId},#{permissionId})")
    public void addPermissionToRole(@Param("roleId") String roleId, @Param("permissionId") String permissionId)throws Exception;
    //删除用户角色
    @Delete("delete from users_role where roleId=#{roleId}")
    void deleteFromUser_RoleByRoleId(String roleId);
    @Delete("delete from role_permission where roleId=#{roleId}")
    void deleteFromRole_PermissionByRoleId(String roleId);
    @Delete("delete from role where id=#{roleId}")
    void deleteRoleById(String roleId);
}
