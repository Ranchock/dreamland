package wang.dreamland.www.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import wang.dreamland.www.common.PageHelper;
import wang.dreamland.www.entity.User;
import wang.dreamland.www.entity.UserContent;

@Controller
public class MessageController extends BaseController{


    @RequestMapping("/message_list")
    public String findAllList(Model model, @RequestParam(value = "id",required = false) String id ,
                              @RequestParam(value = "pageNum",required = false) Integer pageNum ,
                              @RequestParam(value = "pageSize",required = false) Integer pageSize) {

        User user = (User)getSession().getAttribute("user");
        if(user!=null){
            model.addAttribute( "user",user );
        }
        PageHelper.Page<UserContent> page =  findAll(pageNum,pageSize);
        model.addAttribute( "page",page );
        return "../index";
    }
}
