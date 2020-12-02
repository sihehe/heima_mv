package com.itheima.ssm.service;

import com.itheima.ssm.domain.Role;
import com.itheima.ssm.domain.UserInfo;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.List;

public interface IUserService extends UserDetailsService {
    //查询用户信息
    List<UserInfo> findAll(int page,int size) throws Exception;
    //保存用户信息
    public void save(UserInfo userInfo)throws Exception;
    //根据id查询用户信息
    public UserInfo findById(String id)throws Exception;
    //根据用户id查询可以添加的角色
    public List<Role> findOtherRoles(String userId)throws Exception;
    //给用户添加角色
    public void addRoleToUser(String userId, String[] roleIds)throws Exception;
    //修改用户密码
    void updatePassword(String username, String password)throws Exception;
}
