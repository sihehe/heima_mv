package com.itheima.ssm.dao;

import com.itheima.ssm.domain.Employee;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface IEmployeeDao {
  //通过订单id查询员工信息
  @Select("select * from employee where id in(select employeeId from order_employee where orderId=#{orderId})")
  public List<Employee> findByOrderId(String orderId) throws Exception;

  //查询所有的员工信息
  @Select("select * from employee")
  public List<Employee> findAll() throws Exception;

  //保存所有的员工信息
  @Insert("insert into employee(staffId,staffName,staffAge,staffSex,staffTel,credentialsType,credentialsNum,staffAddress,staffStatus) values(#{staffId},#{staffName},#{staffAge},#{staffSex},#{staffTel},#{credentialsType},#{credentialsNum},#{staffAddress},#{staffStatus})")
  public void save(Employee employee) throws Exception;

  //通过id查询员工信息
  @Select("select * from employee where id=#{id}")
  public Employee findById(String id)throws Exception;

  //删除员工信息
  @Delete("delete from order_employee where employeeId=#{employeeId}")
  public void deleteFromOrder_EmployeeByEmployeeId(String employeeId)throws Exception;
  @Delete("delete from employee where id=#{employeeId}")
  public void deleteEmployeeById(String employeeId)throws Exception;

  //更新员工信息
  @Update("update employee set staffId=#{staffId},staffName=#{staffName},staffAge=#{staffAge},staffSex=#{staffSex},staffTel=#{staffTel},credentialsType=#{credentialsType},credentialsNum=#{credentialsNum},staffAddress=#{staffAddress},staffStatus=#{staffStatus} where id=#{id,jdbcType=VARCHAR}")
  public void updateEmployee(Employee employee)throws Exception;
}
