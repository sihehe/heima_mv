package com.itheima.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.itheima.ssm.dao.IClassifyDao;
import com.itheima.ssm.dao.IEmployeeDao;
import com.itheima.ssm.domain.Classify;
import com.itheima.ssm.domain.Employee;
import com.itheima.ssm.service.IClassifyService;
import com.itheima.ssm.service.IEmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class EmployeeServiceImpl implements IEmployeeService {
    @Autowired
    private IEmployeeDao employeeDao;
    //查询所有的员工信息
    @Override
    public List<Employee> findAll() throws Exception {
        return employeeDao.findAll();
    }
    @Override
    public List<Employee> findAll(int page, int size) throws Exception {
        //参数pageNum是页码值参数pageSize代表是每页显示条数
        PageHelper.startPage(page,size);
        return employeeDao.findAll();
    }
    //保存新添加的员工信息
    @Override
    public void save(Employee employee) throws Exception {
        employeeDao.save(employee);
    }
    //通过id查询员工信息
    public Employee findById(String employeeId) throws Exception{
        return employeeDao.findById(employeeId);
    }
    //删除员工信息
    @Override
    public void deleteEmployeeById(String employeeId)throws Exception {
        //从order_employee表中删除
        employeeDao.deleteFromOrder_EmployeeByEmployeeId(employeeId);
        //从employee表中删除
        employeeDao.deleteEmployeeById(employeeId);
    }
    //更新员工信息
    @Override
    public void updateEmployee(Employee employee) throws Exception {
        employeeDao.updateEmployee(employee);
    }

}
