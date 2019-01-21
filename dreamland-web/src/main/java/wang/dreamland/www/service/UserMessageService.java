package wang.dreamland.www.service;


import wang.dreamland.www.common.PageHelper;
import wang.dreamland.www.entity.UserMessage;

public interface UserMessageService {

    /**
     *
     * @param pageNum
     * @param pageSize
     * @return
     */
    PageHelper.Page<UserMessage> findMessage( Integer pageNum, Integer pageSize);

    /**
     *
     * @param uid
     * @param pageNum
     * @param pageSize
     * @return
     */
    PageHelper.Page<UserMessage> findMessageByUId(Long uid, Integer pageNum, Integer pageSize);



}
