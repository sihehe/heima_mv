package com.itheima.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.itheima.ssm.dao.IMessageDao;
import com.itheima.ssm.domain.Message;
import com.itheima.ssm.service.IMessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class MessageServiceImpl implements IMessageService{
    @Autowired
    IMessageDao iMessageDao;
    //查询留言信息
    @Override
    public List<Message> findAll(int page, int size) throws Exception {
        //参数pageNum是页码值参数pageSize代表是每页显示条数
        PageHelper.startPage(page,size);
        return iMessageDao.findAll();
    }
    //保存留言信息
    @Override
    public void save(Message message) throws Exception {
        iMessageDao.save(message);
    }
    //删除留言
    @Override
    public void deleteMessageById(String messageId) throws Exception {
        iMessageDao.deleteMessageById(messageId);
    }
    //根据id查询留言信息
    @Override
    public Message findById(String messageId)throws Exception {
        return iMessageDao.findMessageById(messageId);
    }
    //更新留言信息
    @Override
    public void updateMessage(Message message)throws Exception {
        iMessageDao.updateMessage(message);
    }
}
