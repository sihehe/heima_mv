package com.itheima.ssm.dao;

import com.itheima.ssm.domain.Message;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface IMessageDao {
    //查询留言
    @Select("select * from message")
    public List<Message> findAll()throws Exception;
    //保存留言
    @Insert("insert into message(title, messagedate, messages,replyMessage,messageStatus) values(#{title},#{messagedate},#{messages},#{replyMessage},#{messageStatus})")
    public void save(Message message)throws Exception;
    //删除留言
    @Delete("delete from message where id=#{messageId}")
    public void deleteMessageById(String messageId)throws Exception;
    //根据id查询留言信息
    @Select("select * from message where id=#{messageId}")
    public Message findMessageById(String messageId)throws Exception;
    //更新留言信息
    @Update("update message set title=#{title},messagedate=#{messagedate,jdbcType=DATE},messages=#{messages},replyMessage=#{replyMessage},messageStatus=#{messageStatus} where id=#{id,jdbcType=VARCHAR}")
    public void updateMessage(Message message)throws Exception;
}
