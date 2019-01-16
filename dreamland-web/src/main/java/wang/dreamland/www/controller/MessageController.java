package wang.dreamland.www.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import wang.dreamland.www.common.PageHelper;
import wang.dreamland.www.entity.User;
import wang.dreamland.www.entity.UserMessage;
import wang.dreamland.www.service.UserMessageService;

@Controller
public class MessageController extends BaseController{

    @Autowired
    private UserMessageService userMessageService;


    @RequestMapping("/message_list")
    public String findAllList(Model model, @RequestParam(value = "id",required = false) String id ,
                              @RequestParam(value = "pageNum",required = false) Integer pageNum ,
                              @RequestParam(value = "pageSize",required = false) Integer pageSize) {

        User user = (User)getSession().getAttribute("user");
        UserMessage userMessage = new UserMessage();
        if(user!=null){
            model.addAttribute( "user",user );
            userMessage.setuId(user.getId());
        }else {
            return "../login";
        }
        pageSize = 8; //默认每页显示4条数据
        PageHelper.Page<UserMessage> page =  userMessageService.findMessageByUId(user.getId(),pageNum,pageSize);
        model.addAttribute( "page",page );
        System.out.println(page.toString());
        return "message/message";
    }
}
