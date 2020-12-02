package com.itheima.ssm.service;

import com.itheima.ssm.domain.Message;
import com.itheima.ssm.domain.SysLog;


import java.util.List;

public interface IMessageService {
    //查询所有的留言信息
    public List<Message> findAll(int page, int size)throws Exception;
    //保存留言信息
    public void save(Message message) throws Exception;
    //删除留言信息
    public void deleteMessageById(String messageId)throws Exception;
    //根据id查询留言内容
    public Message findById(String messageId)throws Exception;
    //回复留言
    public void updateMessage(Message message)throws Exception;
}
