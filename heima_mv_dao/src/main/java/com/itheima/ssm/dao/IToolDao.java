package com.itheima.ssm.dao;

import com.itheima.ssm.domain.Classify;
import com.itheima.ssm.domain.Tool;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface IToolDao {
    //查询所有的车辆信息
    @Select("select * from tool")
    public List<Tool> findAll() throws Exception;

    //保存新添加的车辆信息
    @Insert("insert into tool(toolId,toolDriver,toolName,toolImg,toolCz,toolNum,toolDesc) values(#{toolId},#{toolDriver},#{toolName},#{toolImg},#{toolCz},#{toolNum},#{toolDesc})")
    public void save(Tool tool)throws Exception;

    //通过id查询车辆信息
    @Select("select * from tool where id=#{id}")
    public Tool findById(String id)throws Exception;

    //删除车辆信息
    @Delete("delete from orders where toolId=#{toolId}")
    public void deleteFromOrdersByToolId(String toolId)throws Exception;
    @Delete("delete from tool where id=#{toolId}")
    public void deleteToolById(String toolId)throws Exception;

    //更新车辆信息
    @Update("update tool set toolId=#{toolId},toolDriver=#{toolDriver},toolName=#{toolName},toolImg=#{toolImg},toolCz=#{toolCz},toolNum=#{toolNum},toolDesc=#{toolDesc} where id=#{id,jdbcType=VARCHAR}")
    public void updateTool(Tool tool)throws Exception;
}
