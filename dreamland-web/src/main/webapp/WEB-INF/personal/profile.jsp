<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="app" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人设置</title>
    <%--<link href="${app}/css/personal/profile.css" rel="stylesheet"/>--%>

    <!--头部and尾部 -->
    <link rel="stylesheet" type="text/css" href="../res/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="../res/css/main.css">
    <script type="text/javascript" src="${app}/js/skdslider.min.js"></script>

    <link href="${app}/css/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${app}/css/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet"/>
    <link href="${app}/css/zui/css/zui.min.css" rel="stylesheet"/>
    <link href="${app}/css/zui/css/zui-theme.min.css" rel="stylesheet"/>
    <script type="text/javascript" src="${app}/css/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${app}/css/zui/js/zui.min.js"></script>
    <script type="text/javascript" src="${app}/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${app}/css/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${app}/css/zui/js/zui.min.js"></script>
    <link href="${app}/css/zui/lib/datetimepicker/datetimepicker.min.css" rel="stylesheet">
    <script src="${app}/css/zui/lib/datetimepicker/datetimepicker.min.js"></script>
</head>
<body>
<%--头部--%>
<%@ include file="head1.jsp"%>

    <!-- -->
<div style="margin-left: 100px;margin-top: 80px;" class="main-content">
    <div style="width: 300px;height: 600px;background-color:#D1D1D1 ;float: left;margin-left: 4%">
        <div>
        <div class="personal-image" style="width: 300px;height: 240px;">

                <a  title="${user.nickName}" class="avatar"><img id="img-change"  src="${user.imgUrl}" onclick="selectImg();" width="100" height="100" style="border-radius:50%;margin-top: 60px;margin-left: 90px"></a>
                <form id="upload-form"   style="width:auto;" >
                    <input type="file"  id="change-img" name="uploadImg" onchange="changeImg();" style="display:none;">
                </form>

            <div style="float: left;margin-left: 97px;margin-top: 10px;font-size: 18px">
                ${user.nickName}
            </div>

        </div>

        </div>




        <div  style="width: 300px;height: 100%">

            <div id="base" onclick="base_set();" style="background-color: white" >
                <div style="width:100%; height:2px; border-top:1px solid #F2F2F2; clear:both;"></div>
            <div  style="font-size: 18px;text-align: center;height: 60px;line-height: 60px" >
                <i class="icon-x icon-spin icon-cog"></i>&nbsp;基本设置
            </div>
                <div style="width:100%; height:2px; border-top:1px solid #F2F2F2; clear:both;"></div>
            </div>

            <div  id="account" onclick="account_set();">

                <div style="font-size: 18px;text-align: center;height: 60px;line-height: 60px">
                    <i class="icon icon-tags"></i> 账号设置
               </div>
                <div style="width:100%; height:2px; border-top:1px solid #F2F2F2; clear:both;"></div>
            </div>

            <div id="binding"   onclick="binding_set();">

            <div style="font-size: 18px;text-align: center;height: 60px;line-height: 60px" >
                <i class="icon icon-link"></i>&nbsp;绑定设置
            </div>
                <div style="width:100%; height:2px; border-top:1px solid #F2F2F2; clear:both;"></div>
            </div>
        </div>

    </div>






    <div style="width: 800px;height: 600px;background-color: #e5e5e5;float: left;">
        <div style="width: 100%;font-size: 22px;margin-top: 80px;margin-left: 60px">
           <strong id="set_title">基本设置</strong>
          <hr>
        </div>


        <div id="base_content" style="margin-top: 40px;margin-left: 60px;font-size: 18px;" >

            <div>
                <form id="userInfo_form" action="${app}/saveUserInfo" method="post">

                    姓名：<input id="name" name="name" value="${userInfo.name}"/><br/><br/>

                    昵称：<input id="nick_name" name="nick_name" value="${user.nickName}"/><br/><br/>


                    性别：  <input type="radio" name="sex" value="0" checked <c:if test="${userInfo.sex eq '0'}"> checked="checked"</c:if>/>男 &nbsp;&nbsp;
                            <input type="radio" name="sex" value="1" <c:if test="${userInfo.sex eq '1'}"> checked="checked"</c:if>/>女<br/><br/>

                    生日： <input  style="width: 198px;float: right;margin-right: 484px;margin-top: -4px" class="form-control form-date"  readonly="readonly" placeholder="选择一个日期：yyyy-MM-dd" type="text" id="txtEndDate"  name="birthday" value="${userInfo.formateBirthday==null?"":userInfo.formateBirthday}"/><br/><br/>


                    地址： <input id="address" name="address" value="${userInfo.address}"/><br/><br/>

                    <button onclick="saveUserInfo();" style="background-color: #4876FF;width: 80px;margin-top: 30px"  class="btn btn-block " type="button"><span style="color: white">保存</span></button>
                </form>
            </div>
        </div>

        <div id="account_content" style="margin-top: 40px;margin-left: 60px;font-size: 18px;display: none" >

            <div>
                <form>
                账号：${user.email}<br/><br/>
                    密码：******  <a href="${app}/repassword"><span id="password_span" style="color: grey;margin-left: 142px" onmouseover="changeColor(this);" onmouseout="backColor(this);" >修改</span></a><br/><br/>
                    <c:if test="${not empty user.phone}">
                    手机号：${user.phone.substring(0,3)}****${user.phone.substring(7,11)}  <span id="phone_span" style="color: grey;margin-left: 68px" onmouseover="changeColor(this);" onmouseout="backColor(this);">修改</span>
                    </c:if>
                    <c:if test="${empty user.phone}">
                        手机号：<span id="phone_span" style="color: grey;margin-left: 180px" onmouseover="changeColor(this);" onmouseout="backColor(this);">修改</span>
                    </c:if>
                </form>
            </div>
        </div>


        <div id="binding_content" style="margin-top: 40px;margin-left: 60px;font-size: 18px;display: none" >

            <div>
                <form>
                    <c:if test="${empty weixin}">
                        <div style="float: left">
                            微信：未绑定
                        </div>
                        <div style="float: left;margin-left: 150px">
                            <span id="wx_span" style="color: grey" onmouseover="changeColor(this);" onmouseout="backColor(this);">立即绑定</span>
                        </div>
                    </c:if>
                    <c:if test="${not empty weixin}" >
                        <div style="float: left">
                            微信：已绑定
                        </div>
                        <div style="float: left;margin-left: 150px">
                            <span id="wx_span_remove" style="color: grey" onmouseover="changeColor(this);" onmouseout="backColor(this);">解除绑定</span>
                        </div>
                    </c:if>

                    <br/><br/>
                    <c:if test="${empty qq}">
                    <div style="float: left;">
                        Q Q：未绑定
                    </div>
                    <div style="float: left;margin-left: 150px" onclick="binding_qq();">
                        <span id="qq_span" style="color: grey"  onmouseover="changeColor(this);" onmouseout="backColor(this);">立即绑定</span>
                    </div>
                    </c:if>
                    <c:if test="${not empty qq}">
                        <div style="float: left;">
                            Q Q：已绑定
                        </div>
                        <div style="float: left;margin-left: 150px" onclick="qq_span_remove();">
                            <span id="qq_span_remove" style="color: grey" onmouseover="changeColor(this);" onmouseout="backColor(this);">解除绑定</span>
                        </div>
                    </c:if>

                    <br/><br/>
                    <c:if test="${empty weibo}">
                    <div style="float: left;">
                        微博：未绑定
                    </div>
                    <div style="float: left;margin-left: 150px">
                        <span id="wb_span" style="color: grey" onmouseover="changeColor(this);" onmouseout="backColor(this);">立即绑定</span>
                    </div>
                    </c:if>
                    <c:if test="${not empty weibo}">
                        <div style="float: left;">
                            微博：已绑定
                        </div>
                        <div style="float: left;margin-left: 150px">
                            <span id="wb_span_remove" style="color: grey" onmouseover="changeColor(this);" onmouseout="backColor(this);">解除绑定</span>
                        </div>
                    </c:if>

                </form>
            </div>
        </div>

    </div>

</div>
<%--尾部--%>
<%--<%@ include file="foot.jsp"%>--%>
</body>
<script>

    // 仅选择日期
    $(".form-date").datetimepicker(
        {
            language:  "zh-CN",
            weekStart: 1,
            todayBtn:  1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            minView: 2,
            forceParse: 0,
            format: "yyyy-mm-dd"
        });

function base_set() {
    document.getElementById("base").style.backgroundColor = "white";
    document.getElementById("account").style.backgroundColor = "#D1D1D1";
    document.getElementById("binding").style.backgroundColor = "#D1D1D1 ";

    document.getElementById("set_title").innerHTML = "基本设置";

    document.getElementById("base_content").style.display = "";
    document.getElementById("account_content").style.display = "none";
    document.getElementById("binding_content").style.display = "none";

}

function account_set() {
    document.getElementById("base").style.backgroundColor = "#D1D1D1";
    document.getElementById("account").style.backgroundColor = "white";
    document.getElementById("binding").style.backgroundColor = "#D1D1D1 ";

    document.getElementById("set_title").innerHTML = "账号设置";

    document.getElementById("base_content").style.display = "none";
    document.getElementById("account_content").style.display = "";
    document.getElementById("binding_content").style.display = "none";
}

function binding_set() {
    document.getElementById("base").style.backgroundColor = "#D1D1D1";
    document.getElementById("account").style.backgroundColor = "#D1D1D1";
    document.getElementById("binding").style.backgroundColor = "white";

    document.getElementById("set_title").innerHTML = "绑定设置";

        document.getElementById("base_content").style.display = "none";
        document.getElementById("account_content").style.display = "none";
        document.getElementById("binding_content").style.display = "";
    }


function changeColor(changeSpan) {
    changeSpan.style.color = "#9F79EE";
}
function backColor(backColor) {
    backColor.style.color = "grey";
}
function saveUserInfo() {
    $("#userInfo_form").submit();
}

//点击图片事件
function selectImg() {
    document.getElementById("change-img").click();
}

//图片选择后事件
function changeImg() {
    var formData = new FormData($( "#upload-form" )[0]);
    $.ajax({
        url: '/fileUpload' ,
        type: 'POST',
        data: formData,
        async: false,
        cache: false,
        contentType: false,
        processData: false,
        success: function (data) {
            var msg = data["error"];
            if(msg==0){
                //上传成功
                var url = data["url"];
                document.getElementById("img-change").src = url;
                saveImg(url);
            }

        }
    });
}

//保存个人头像
function saveImg(url) {
    $.ajax({
        type:'post',
        data: {"url":url},
        url: '/saveImage' ,
        dataType:'json',
        success: function (data) {
           alert(data["msg"]);
        }
    });
}

</script>
</html>