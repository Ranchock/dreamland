<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="app" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>修改密码</title>

    <link href="${app}/css/personal/repassword.css" rel="stylesheet"/>

    <link href="${app}/css/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${app}/css/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet"/>
    <link href="${app}/css/zui/css/zui.min.css" rel="stylesheet"/>
    <link href="${app}/css/zui/css/zui-theme.min.css" rel="stylesheet"/>
    <script type="text/javascript" src="${app}/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${app}/css/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${app}/css/zui/js/zui.min.js"></script>

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

                <form action="${app}/updatePassword" method="post" id="update_password">
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

<%@ include file="foot.jsp"%>
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