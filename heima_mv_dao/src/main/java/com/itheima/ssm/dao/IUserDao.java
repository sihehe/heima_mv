package com.itheima.ssm.dao;

import com.itheima.ssm.domain.Role;
import com.itheima.ssm.domain.UserInfo;
import org.apache.ibatis.annotations.*;
import org.springframework.security.core.userdetails.User;

import java.util.List;

public interface IUserDao {
    @Select("select * from users where username=#{username}")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(column = "username", property = "username"),
            @Result(column = "password", property = "password"),
            @Result(column = "gender", property = "gender"),
            @Result(column = "phoneNum", property = "phoneNum"),
            @Result(column = "email", property = "email"),
            @Result(column = "icon", property = "icon"),
            @Result(column = "status", property = "status"),
            @Result(column="id",property="roles",javaType =List.class,many=@Many(select="com.itheima.ssm.dao.IRoleDao.findRoleByUserId"))
    })
    public UserInfo findByUsername(String username)throws Exception;
    //查询用户信息
    @Select("select* from users")
    public List<UserInfo> findAll()throws Exception;
    //保存用户信息
    @Insert("insert into users(email,username,password,gender,phoneNum,icon,status) values(#{email},#{username},#{password},#{gender},#{phoneNum},#{icon},#{status})")
    void save(UserInfo userInfo)throws Exception;
    //根据id查询指定用户
    @Select("select * from users where id=#{id}")
    @Results({
            @Result(id = true, property = "id", column = "id"),
            @Result(column = "username", property = "username"),
            @Result(column = "password", property = "password"),
            @Result(column = "gender", property = "gender"),
            @Result(column = "phoneNum", property = "phoneNum"),
            @Result(column = "email", property = "email"),
            @Result(column = "icon", property = "icon"),
            @Result(column = "status", property = "status"),
            @Result(column="id",property="roles",javaType =List.class,many=@Many(select="com.itheima.ssm.dao.IRoleDao.findRoleByUserId"))
    })
    public UserInfo findById(String id)throws Exception;
    //根据用户id查询可以添加的角色
    @Select("select * from role where id not in(select roleId from users_role where userId=#{userId})")
    public List<Role> findOtherRoles(String userId)throws Exception;
    //给用户添加角色
    @Insert("insert into users_role(userId,roleId) values(#{userId},#{roleId})")
    public void addRoleToUser(@Param("userId") String userId, @Param("roleId") String roleId)throws Exception;

    //修改用户密码
    @Update("update users set password=#{password} where username=#{username}")
    public void updatePassword(@Param("username")String username,@Param("password") String password)throws Exception;
}
