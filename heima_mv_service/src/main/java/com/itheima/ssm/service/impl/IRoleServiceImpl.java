package com.itheima.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.itheima.ssm.dao.IRoleDao;
import com.itheima.ssm.domain.Permission;
import com.itheima.ssm.domain.Role;
import com.itheima.ssm.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class IRoleServiceImpl implements IRoleService {
    @Autowired
    private IRoleDao roleDao;
    //通过roleId查询用户角色
    @Override
    public Role findById(String roleId) throws Exception {
        return roleDao.findById(roleId);
    }
    //通过roleId查询其他用户可以添加的资源权限
    @Override
    public List<Permission> findOtherPermissions(String roleId) throws Exception {
        return roleDao.findOtherPermissons(roleId);
    }
    //通过指定roleId，保存选择的资源权限信息
    @Override
    public void addPermissionToRole(String roleId, String[] permissionIds) throws Exception {
        for(String permissionId:permissionIds){
            roleDao.addPermissionToRole(roleId,permissionId);
        }
    }

    /**
     * 查询角色信息
     * @return
     * @throws Exception
     */
    @Override
    public List<Role> findAll(int page,int size) throws Exception {
        //参数pageNum是页码值参数pageSize代表是每页显示条数
        PageHelper.startPage(page,size);
        return roleDao.findAll();
    }

    /**
     * 保存角色信息
     * @param role
     * @throws Exception
     */
    @Override
    public void save(Role role) throws Exception {
        roleDao.save(role);
    }
    //删除用户角色
    @Override
    public void deleteRoleById(String roleId) {
        //从user_role表中删除
        roleDao.deleteFromUser_RoleByRoleId(roleId);
        //从role_permission表中删除
        roleDao.deleteFromRole_PermissionByRoleId(roleId);
        //从role表中删除
        roleDao.deleteRoleById(roleId);
    }
}
