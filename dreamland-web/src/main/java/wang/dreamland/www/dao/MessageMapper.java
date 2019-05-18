package wang.dreamland.www.dao;

import tk.mybatis.mapper.common.Mapper;
import wang.dreamland.www.entity.UserMessage;



public interface MessageMapper extends Mapper<UserMessage>{


    //插入新的留言 返回主键id
    int insertMessage(UserMessage userMessage);
}
