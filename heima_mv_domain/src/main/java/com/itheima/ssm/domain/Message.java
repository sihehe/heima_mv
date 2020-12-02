package com.itheima.ssm.domain;



import com.itheima.ssm.utils.DateUtils;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Message{
    private String id;
    private String title;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm")
    private Date messagedate;
    private String messagedateStr;
    private String messages;
    private String replyMessage;
    private Integer messageStatus;//状态 0 未回复 1 已恢复
    private String  messageStatusStr;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getMessagedate() {
        return messagedate;
    }

    public void setMessagedate(Date messagedate) {
        this.messagedate = messagedate;
    }

    public String getMessagedateStr() {
        if(messagedate!=null){
            messagedateStr = DateUtils.date2String(messagedate, "yyyy-MM-dd HH:mm:ss");
        }
        return messagedateStr;
    }

    public void setMessagedateStr(String messagedateStr) {
        this.messagedateStr = messagedateStr;
    }

    public String getMessages() {
        return messages;
    }

    public void setMessages(String messages) {
        this.messages = messages;
    }

    public String getReplyMessage() {
        return replyMessage;
    }

    public void setReplyMessage(String replyMessage) {
        this.replyMessage = replyMessage;
    }

    public Integer getMessageStatus() {
        return messageStatus;
    }

    public void setMessageStatus(Integer messageStatus) {
        this.messageStatus = messageStatus;
    }

    public String getMessageStatusStr() {
        if (messageStatus != null) {
            // 状态 0 未回复 1 已回复
            if(messageStatus==0)
                messageStatusStr="未回复";
            if(messageStatus==1)
                messageStatusStr="已回复";
            if(messageStatus==2)
                messageStatusStr="未发送";
            if(messageStatus==3)
                messageStatusStr="已发送";
        }
        return messageStatusStr;
    }

    public void setMessageStatusStr(String messageStatusStr) {
        this.messageStatusStr = messageStatusStr;
    }


}
