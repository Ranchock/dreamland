package wang.dreamland.www.controller;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import wang.dreamland.www.common.DateUtils;
import wang.dreamland.www.common.PageHelper;
import wang.dreamland.www.entity.User;
import wang.dreamland.www.entity.UserMessage;
import wang.dreamland.www.service.UserMessageService;

import java.rmi.server.UID;
import java.util.Date;


@Controller
public class MessageController extends BaseController{

    private final static Logger log = Logger.getLogger(MessageController.class);

    @Autowired
    private UserMessageService userMessageService;


    /**
     * 返回留言板列表
     * @param model
     * @param id
     * @param pageNum
     * @param pageSize
     * @return
     */
    @RequestMapping("/message_list")
    public String findAllList(Model model, @RequestParam(value = "id",required = false) String id ,
                              @RequestParam(value = "pageNum",required = false) Integer pageNum ,
                              @RequestParam(value = "pageSize",required = false) Integer pageSize) {

        User user = (User)getSession().getAttribute("user");
        UserMessage userMessage = new UserMessage();
        if(user!=null){//当有用户登录时，读取用户的昵称和个人头像
            model.addAttribute( "user",user );
            userMessage.setuId(user.getId());
        }else { //当用户没有登录时，采用默认的用户名和默认的个人头像：游客****
            return "../login";
        }
        pageSize = 8; //默认每页显示8条数据
        PageHelper.Page<UserMessage> page =  userMessageService.findMessage(pageNum,pageSize);
        model.addAttribute( "page",page );
        System.out.println(page.toString());
        return "message/message";
    }

    /**
     * 用户留言

     */
    @RequestMapping("/save_message")
    public String saveMessage(Model model,
                            @RequestParam(value = "id",required = false)String id,
                            @RequestParam(value = "mid", required = false)String mid,
                            @RequestParam(value = "content",required = false)String content
                            ) {
        log.info("留言开始");
        User user = (User) getSession().getAttribute("user");
        if(user == null) {
            //未登录
            model.addAttribute("error","请先登录！！！");
            UserMessage userMessage = new UserMessage();
            userMessage.setMessage(content);
            userMessage.setuId(user.getId());
            userMessage.setNickName(user.getNickName());
            userMessage.setImgUrl(user.getImgUrl());
            userMessageService.add(userMessage);
        }
        UserMessage userMessage = new UserMessage();
        long time = new Date().getTime();
        userMessage.setId(time);
        log.info("id: " + userMessage.getId());
        userMessage.setMessage(content);
        userMessage.setuId(user.getId());
        userMessage.setNickName(user.getNickName());
        userMessage.setImgUrl(user.getImgUrl());
        userMessageService.add(userMessage);
        log.info("11111111" + userMessage.getMessage());
        log.info("22222222" + user.getNickName());


        model.addAttribute("userMessage",userMessage);
        return "redirect:/message_list";


    }
}
