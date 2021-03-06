package wang.dreamland.www.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import wang.dreamland.www.common.PageHelper;
import wang.dreamland.www.common.PageHelper.Page;
import wang.dreamland.www.dao.MessageMapper;
import wang.dreamland.www.dao.UserMessageMapper;
import wang.dreamland.www.entity.User;
import wang.dreamland.www.entity.UserMessage;
import wang.dreamland.www.service.UserMessageService;


@Service
public class UserMessageServiceImpl implements UserMessageService {

    @Autowired
    private MessageMapper userMessageMapper;


    @Override
    public Page<UserMessage> findMessage(Integer pageNum, Integer pageSize) {
        UserMessage userMessage = new UserMessage();
        //开始分页
        PageHelper.startPage(pageNum,pageSize);
        userMessageMapper.select(userMessage);
        Page endPage = PageHelper.endPage(); //结束分页
        return endPage;
    }

    @Override
    public PageHelper.Page<UserMessage> findMessageByUId(Long uid, Integer pageNum, Integer pageSize) {
        UserMessage userMessage = new UserMessage();
        userMessage.setuId(uid);
        //开始分页
        PageHelper.startPage(pageNum,pageSize);
        userMessageMapper.select(userMessage);
        Page endPage = PageHelper.endPage(); //结束分页
        return endPage;
    }

    public int add(UserMessage userMessage) {
        return userMessageMapper.insertMessage(userMessage);
    }
}
