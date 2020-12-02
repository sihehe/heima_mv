package com.itheima.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.itheima.ssm.dao.IToolDao;
import com.itheima.ssm.domain.Tool;
import com.itheima.ssm.service.IToolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ToolServiceImpl implements IToolService {
    @Autowired
    private IToolDao toolDao;
    //查询所有的车辆信息
    @Override
    public List<Tool> findAll(int page,int size) throws Exception {
        //参数pageNum是页码值参数pageSize代表是每页显示条数
        PageHelper.startPage(page,size);
        return toolDao.findAll();
    }
    //查询所有的车辆信息------主要是id
    @Override
    public List<Tool> findAll() throws Exception {
        return toolDao.findAll();
    }
    //保存新添加的车辆信息
    @Override
    public void save(Tool tool) throws Exception {
        toolDao.save(tool);
    }
    //删除车辆信息
    @Override
    public void deleteToolById(String toolId) throws Exception {
        //从orders表中删除
        toolDao.deleteFromOrdersByToolId(toolId);
        //从tool表中删除
        toolDao.deleteToolById(toolId);
    }
    //更新车辆信息
    @Override
    public void updateTool(Tool tool) throws Exception {
        toolDao.updateTool(tool);
    }
    //通过id查询车辆信息
    @Override
    public Tool findById(String toolId) throws Exception {
        return toolDao.findById(toolId);
    }
}
