<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>修改密码</title>

    <link href="${ctx}/css/personal/repassword.css" rel="stylesheet"/>

    <link href="${ctx}/css/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${ctx}/css/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet"/>
    <link href="${ctx}/css/zui/css/zui.min.css" rel="stylesheet"/>
    <link href="${ctx}/css/zui/css/zui-theme.min.css" rel="stylesheet"/>
    <script type="text/javascript" src="${ctx}/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${ctx}/css/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${ctx}/css/zui/js/zui.min.js"></script>

</head>
<body>

<%--头部--%>
<%@ include file="head.jsp"%>


    <!-- -->
<div style="margin-left: auto;margin-right: auto;width: 460px;height: 550px;background-color: white">

        <div style="text-align: center">
            <div style="margin-top: 50px;float: left;margin-left: 180px">
                    <span style="font-size: 23px"><strong> 修改密码</strong></span>

            </div>
            <div style="float: left;background-color:#EAEAEA;height: 1px;width: 300px;margin-left: 80px;margin-top: 30px"> </div>

            <div style="float: left;margin-top: 40px;margin-left: 50px">

                <form action="${ctx}/updatePassword" method="post" id="update_password">
                    <input onblur="oldPassword();" id="old_password" name="old_password" type="password" placeholder="    输入旧密码" style="width: 350px;height: 50px"/><br/><br/>
                    <span id="old_span" style="color:red;"></span><br/>
                    <input onblur="newPassword();" id="password" name="password" type="password" placeholder="    输入新密码" style="width: 350px;height: 50px"/><br/><br/><br/>
                    <input onblur="rePassword();" id="repassword" type="password" placeholder="    确认新密码" style="width: 350px;height: 50px"/><br/><br/><br/>
                    <br/>
                    <button onclick="surePost();" style="background-color: #0a67fb;height: 50px"  class="btn btn-block " type="button"><span style="color: white">确认</span></button>
                </form>
            </div>
        </div>



</div>
<!--底部-->
<div class="foot" style="position: absolute;left: 0px;float: left;margin-top: 30px;width: 100% ;height: 280px;background-color: #5e5e5e">

    <div style="margin-left: 400px;color: white">
        <div class="foot-nav clearfix">
            <div class="foot-nav-col">
                <h3>
                    关于
                </h3>
                <ul style="color: white">
                    <li>
                        <a href="" target="_blank" rel="nofollow" style="color: white">
                            关于梦境网
                        </a>
                    </li>
                    <li>
                        <a href="" target="_blank" rel="nofollow" style="color: white">
                            加入我们
                        </a>
                    </li>
                    <li>
                        <a href="" target="_blank" rel="nofollow" style="color: white">
                            联系方式
                        </a>
                    </li>
                </ul>
            </div>
            <div class="foot-nav-col">
                <h3>
                    帮助
                </h3>
                <ul style="color: white">
                    <li>
                        <a href="" target="_blank" rel="nofollow" style="color: white">
                            在线反馈
                        </a>
                    </li>
                    <li>
                        <a href="" target="_blank" rel="nofollow" style="color: white">
                            用户协议
                        </a>
                    </li>
                    <li>
                        <a href="" target="_blank" rel="nofollow" style="color: white">
                            隐私政策
                        </a>
                    </li>
                </ul>
            </div>
            <div class="foot-nav-col">
                <h3>
                    下载
                </h3>
                <ul style="color: white">
                    <li>
                        <a href=""
                           target="_blank" rel="external nofollow" style="color: white">
                            Android 客户端
                        </a>
                    </li>
                    <li>
                        <a href="" rel="external nofollow" style="color: white">
                            iPhone 客户端
                        </a>
                    </li>
                </ul>
            </div>
            <div class="foot-nav-col">
                <h3>
                    关注
                </h3>
                <ul style="color: white">
                    <li>
                        <a href="http://www.dreamland.wang" onMouseOut="hideImg()"  onmouseover="showImg()" style="color: white">
                            微信
                            <div id="wxImg" style="display:none;height:50px;back-ground:#f00;position:absolute;color: white">
                                <img src="images/dreamland.png"/><br/>
                                手机扫描二维码关注
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="" target="_blank" rel="external nofollow" style="color: white">
                            新浪微博
                        </a>
                    </li>
                    <li>
                        <a href="" target="_blank" rel="external nofollow" style="color: white">
                            QQ空间
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <hr style="position: absolute;background-color: rgba(161,171,175,0.31);width: 100%;height: 1px;left: 0px;margin-top: 10px"/>

        <div class="foot-nav clearfix" style="position: absolute;left: 0px;margin-top: 20px;margin-left: 400px;text-align: center">
            <div class="foot-copyrights" style="margin-left: 100px">
                <p style="color: white;font-size: 12px">
                    互联网ICP备案：京ICP备xxxxxx号-1
                </p>
                <p>
                    <span style="color: white;font-size: 12px">违法和不良信息举报电话：010-xxxxxxx</span>
                    <span style="color: white">>邮箱：xxx@dreamland.wang</span>
                </p>
                <p style="margin-top: 8px;color: white;font-size: 12px">&copy;www.dreamland.wang 梦境网版权所有</p>
            </div>
        </div>
    </div>
</div>


</body>
<script>


 var f1 = false;
function oldPassword() {
   var old =  $("#old_password").val();

   if(old==null || old.trim()==''){
       document.getElementById("old_span").innerHTML = "请输入密码！";
       f1 = false;
   }else if(old.length < 6){
       document.getElementById("old_span").innerHTML = "密码长度少于6位，请重新输入！";
       f1 = false;
   }
   else {
       document.getElementById("old_span").innerHTML = "";
       f1 = true;
   }
}

 var f2 = false;
function newPassword() {
    var p = $("#password").val();
    var old =  $("#old_password").val();
    if(p==null || p.trim()==''){
        document.getElementById("old_span").innerHTML = "请输入密码！";
        f2 = false;
    }else if(p.length < 6){

            $("#old_span").text("密码长度少于6位，请重新输入！").css("color","red");
            f2 =  false;

    }else if(p==old){
        $("#old_span").text("新密码与旧密码一致，请重新输入！").css("color","red");
        f2 = false;
    }

    else {
        document.getElementById("old_span").innerHTML = "";
        f2 = true
    }
}
     var f3 = false;
    function rePassword() {
        var p = $("#repassword").val();
        var p1 = $("#password").val();
        if(p==null || p.trim()==''){
            document.getElementById("old_span").innerHTML = "请输入密码！";
            f3 = false;
        }else if(p!=p1){
            document.getElementById("old_span").innerHTML = "两次密码不一致！";
            f3 = false;
        }
        else {
            document.getElementById("old_span").innerHTML = "";
            f3 = true
        }
    }

function surePost() {
    if(f1 && f2 && f3){
        $("#update_password").submit();

    }else {
        $("#old_span").text("请重新输入密码！").css("color","red");
    }
}
</script>
</html>