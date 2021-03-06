package wang.dreamland.www.controller;

import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import wang.dreamland.www.common.CodeCaptchaServlet;
import wang.dreamland.www.common.MD5Util;
import wang.dreamland.www.entity.User;
import wang.dreamland.www.mail.SendEmail;
import wang.dreamland.www.service.UserService;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;


@Controller
public class RegisterController {

    private final static Logger log = Logger.getLogger(RegisterController.class);

    @Autowired
    private UserService userService;
    @Autowired// redis数据库操作模板
     private RedisTemplate<String, String> redisTemplate;

    /**
     * 手机号校验:判断是否被注册
     * @param model
     * @param phone
     * @return
     */
    @RequestMapping("/checkPhone")
    @ResponseBody
    public Map<String, Object> checkPhone(Model model, @RequestParam(value = "phone", required = false) String phone) {
        log.debug("注册-判断手机号" + phone + "是否可用");
        Map map = new HashMap<String, Object>();
        User user = userService.findByPhone(phone);
        if (user == null) {
            //未注册
            map.put("message", "success");
        } else {
            //已注册
            map.put("message", "fail");
        }
        return map;
    }

    /**
     * 判断邮箱是否已经被注册
     * @param model
     * @param email
     * @return
     */
    @RequestMapping("/checkEmail")
    @ResponseBody
    public Map<String, Object> checkEmail(Model model, @RequestParam(value = "email", required = false) String email) {
        log.debug("注册-判断邮箱" + email + "是否可用");
        Map map = new HashMap<String, Object>();
        User user = userService.findByEmail(email);
        if (user == null) {
            //未注册
            map.put("message", "success");
        } else {
            //已注册
            map.put("message", "fail");
        }

        return map;
    }

    /**
     * 判断验证码是否正确
     * @param model
     * @param code
     * @return
     */
    @RequestMapping("/checkCode")
    @ResponseBody
    public Map<String,Object> checkCode(Model model,
           @RequestParam(value="code",required = false) String code){
        log.debug("注册-判断验证码"+code+"是否正确");
        Map map = new HashMap<String,Object>();
        ServletRequestAttributes attrs =
                (ServletRequestAttributes) RequestContextHolder.getRequestAttributes(); //通过ServletRequestAttributes获取Request对象，获取Session对象
        String vcode = (String) attrs.getRequest().getSession().getAttribute(CodeCaptchaServlet
        .VERCODE_KEY); //通过session.getAttribute方法获取之前生成并存在session中的验证码，并赋值给vcode
        System.out.println(code);
        System.out.println(vcode);
        if(code.equals(vcode)) {
            //验证码正确
            map.put("message","success");
        }else {
            //验证码错误
            map.put("message","fail");
        }
        return map;
    }

    /**
     * 用户注册
     * @param model
     * @param email
     * @param password
     * @param phone
     * @param nickname
     * @param code
     * @return
     */
    @RequestMapping("/doRegister")
    public String doRegister(Model model,
            @RequestParam(value = "email",required = false) String email,
            @RequestParam(value = "password", required = false) String password,
            @RequestParam(value = "phone", required = false) String phone,
            @RequestParam(value = "nickName", required = false) String nickname,
            @RequestParam(value = "code", required = false) String code
            ) {
        log.debug("注册...");

        //判断是否为非法注册
        if(StringUtils.isBlank(code)) {
            model.addAttribute("error","非法注册，请重新注册！");
            return "../register";
        }

        //判断验证码
        int b = checkValidateCode(code);
        if (b == -1) {
            model.addAttribute("error", "验证码超时，请重新注册！");
            return "../register";
        } else if (b == 0) {
            model.addAttribute("error", "验证码不正确,请重新输入!");
            return "../register";
        }

        User user = userService.findByEmail(email);
        if(user != null) {
            model.addAttribute("error","该用户已经被注册");
            return "../register";
        }else {
            user = new User();
            user.setNickName(nickname);
            user.setPassword(MD5Util.encodeToHex("salt"+password));
            user.setPhone(phone);
            user.setEmail(email);
            user.setState("0");
            user.setEnable("0");
            user.setImgUrl("/images/icon_m.jpg");
            //邮件激活码
            String validateCode = MD5Util.encodeToHex(
                    "salt"+email+password);
            redisTemplate.opsForValue().set(email,
                    validateCode,24, TimeUnit.HOURS); //24小时有效激活时间，redis保存激活码

            userService.regist(user);

            log.debug("注册成功！！！");
            SendEmail.sendEmailMessage(email,validateCode);
            String message = email + "," + validateCode;
            model.addAttribute("message",message);
            return "/regist/registerSuccess";
        }

    }

    /**
     * 匹对验证码的正确性
     * @param code
     * @return
     */
    public int checkValidateCode(String code) {
        ServletRequestAttributes attrs = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        Object vercode = attrs.getRequest().getSession().getAttribute("VERCODE_KEY");
        if (null == vercode) {
            return -1;
        }
        if (!code.equalsIgnoreCase(vercode.toString())) {
            return 0;
        }
        return 1;
    }

    /**
     * 激活验证码
     * @param model
     * @return
     */
    @RequestMapping("/activecode")
    public String active(Model model) {
        log.info( "==============激活验证==================" );
        //判断   激活有无过期 是否正确
        //validateCode=
        ServletRequestAttributes attrs = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        String validateCode = attrs.getRequest().getParameter( "validateCode" );
        String email = attrs.getRequest().getParameter( "email" );
        String code = redisTemplate.opsForValue().get( email );
        log.info( "验证邮箱为："+email+",邮箱激活码为："+code+",用户链接的激活码为："+validateCode );
        //判断是否已激活

        User userTrue = userService.findByEmail( email );
        if(userTrue!=null && "1".equals( userTrue.getState() )){
            //已激活
            model.addAttribute( "success","您已激活,请直接登录！" );
            return "../login";
        }

        if(code==null){
            //激活码过期
            model.addAttribute( "fail","您的激活码已过期,请重新注册！" );
            userService.deleteByEmail( email );
            return "/regist/activeFail";
        }

        if(StringUtils.isNotBlank( validateCode ) && validateCode.equals( code )){
            //激活码正确
            userTrue.setEnable( "1" );
            userTrue.setState( "1" );
            userService.update( userTrue );
            model.addAttribute( "email",email );
            return "/regist/activeSuccess";
        }else {
            //激活码错误
            model.addAttribute( "fail","您的激活码错误,请重新激活！" );
            return "/regist/activeFail";
        }
    }

    /**
     * 发送验证码
     * @param model
     * @return
     */
    @RequestMapping("/sendEmail")
    @ResponseBody
    public  Map<String,Object> sendEmail(Model model) {
        Map map = new HashMap<String,Object>(  );
        ServletRequestAttributes attrs = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        String validateCode = attrs.getRequest().getParameter( "validateCode" );
        String email = attrs.getRequest().getParameter( "email" );
        SendEmail.sendEmailMessage(email,validateCode);
        map.put( "success","success" );
        return map;
    }

    /**
     * 进入注册页面
     * @param model
     * @return
     */
    @RequestMapping("/register")
    public String register(Model model) {
        log.info("进入注册页面");
        return "../register";
    }
}
