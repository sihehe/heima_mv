package com.itheima.ssm.service;


import com.itheima.ssm.domain.Tool;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface IToolService {
    //查询所有的车辆信息
    public List<Tool> findAll() throws Exception;
    public List<Tool> findAll(int page,int size) throws Exception;
    //保存新添加的车辆信息
    public void save(Tool tool)throws Exception;
    //通过Id删除车辆信息
    public void deleteToolById(String toolId) throws Exception;
    //更新车辆信息
    public void updateTool(Tool tool)throws Exception;
    //通过id查询车辆信息
    public Tool findById(String toolId)throws Exception;

}
