package com.itheima.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.itheima.ssm.dao.IClassifyDao;
import com.itheima.ssm.domain.Classify;
import com.itheima.ssm.service.IClassifyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class ClassifyServiceImpl implements IClassifyService {
    @Autowired
    private IClassifyDao classifyDao;
    //查询所有的服务项目信息
    @Override
    public List<Classify> findAll(int page,int size) throws Exception {
        //参数pageNum是页码值参数pageSize代表是每页显示条数
        PageHelper.startPage(page,size);
        return classifyDao.findAll();
    }
    //查询所有的服务项目信息---------------主要是id
    @Override
    public List<Classify> findAll() throws Exception {
        return classifyDao.findAll();
    }
    //保存新添加的服务项目信息
    @Override
    public void save(Classify classify) throws Exception {
        classifyDao.save(classify);
    }
    //通过id查询服务项目信息
    public Classify findById(String classifyId) throws Exception{
        return classifyDao.findById(classifyId);
    }
    //删除服务项目
    @Override
    public void deleteClassifyById(String classifyId)throws Exception {
        //从orders表中删除
        classifyDao.deleteFromOrdersByClassifyId(classifyId);
        //从classify表中删除
        classifyDao.deleteClassifyById(classifyId);
    }
   //更新服务项目
    @Override
    public void updateClassify(Classify classify) throws Exception {
        classifyDao.updateClassify(classify);
    }
}
