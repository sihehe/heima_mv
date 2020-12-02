package com.itheima.ssm.service;

import com.itheima.ssm.domain.Classify;
import com.itheima.ssm.domain.Employee;

import java.util.List;

public interface IEmployeeService {
    //查询所有的员工信息
    public List<Employee> findAll() throws Exception;
    public List<Employee> findAll(int page, int size) throws Exception;
    //保存新添加的员工
    public void save(Employee employee)throws Exception;
    //通过id查询员工信息
    public Employee findById(String employeeId) throws Exception;
    //通过employeeId删除员工信息
    public void deleteEmployeeById(String employeeId) throws Exception;
    //更新员工信息
    public void updateEmployee(Employee employee) throws Exception;

}
