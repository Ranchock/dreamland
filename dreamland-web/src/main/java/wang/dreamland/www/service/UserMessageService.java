package wang.dreamland.www.service;


import wang.dreamland.www.common.PageHelper;
import wang.dreamland.www.entity.UserMessage;

import java.util.List;

public interface UserMessageService {

    /**
     *
     * @param uid
     * @param pageNum
     * @param pageSize
     * @return
     */
    PageHelper.Page<UserMessage> findMessageByUId(Long uid, Integer pageNum, Integer pageSize);

}
