package com.itheima.ssm.dao;

import com.itheima.ssm.domain.Classify;
import org.apache.ibatis.annotations.*;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

public interface IClassifyDao {
    //查询所有的服务项目信息
    @Select("select * from classify")
    public List<Classify> findAll() throws Exception;

    //保存新添加的服务项目信息
    @Insert("insert into classify(classifyNum,classifyName,classifyTime,classifyPath,classifyPrice,classifyDesc,classifyStatus) values(#{classifyNum},#{classifyName},#{classifyTime},#{classifyPath},#{classifyPrice},#{classifyDesc},#{classifyStatus})")
    public void save(Classify classify)throws Exception;

    //通过id查询项目信息
    @Select("select * from classify where id=#{id}")
    public Classify findById(String id)throws Exception;

    //删除服务项目
    @Delete("delete from orders where classifyId=#{classifyId}")
    public void deleteFromOrdersByClassifyId(String classifyId)throws Exception;
    @Delete("delete from classify where id=#{classifyId}")
    public void deleteClassifyById(String classifyId)throws Exception;

    //更新服务项目
    @Update("update classify set classifyNum=#{classifyNum},classifyName=#{classifyName},classifyTime=#{classifyTime,jdbcType=DATE},classifyPath=#{classifyPath},classifyPrice=#{classifyPrice},classifyDesc=#{classifyDesc},classifyStatus=#{classifyStatus} where id=#{id,jdbcType=VARCHAR}")
    public void updateClassify(Classify classify)throws Exception;
}
