<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="app" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>FootBall land&足球大陆</title>
    <!--引入BootStrap样式-->
    <link href="${app}/css/zui/css/zui.min.css" rel="stylesheet"/>
    <link href="${app}/css/zui/css/zui-theme.min.css" rel="stylesheet"/>

    <!--头部and尾部 -->
    <link rel="stylesheet" type="text/css" href="../res/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="../res/css/main.css">
    <script type="text/javascript" src="${app}/js/skdslider.min.js"></script>


</head>
<body style="background: #f4f4f4">
<script type="text/javascript" src="${app}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${app}/css/zui/js/zui.min.js"></script>

<%--头部--%>
<%@ include file="head.jsp"%>
<br/>

<div class="message" style="width: 1096px" >
    <div class="comments" style="margin-left: 17%;width: 1000px;background: #d8d8d8">
        <header>
            <div class="pull-right"><a href="#commentReplyForm2" class="btn btn-primary"><i class="icon-comment-alt"></i> 发表留言</a></div>
            <h3>所有留言</h3>
        </header>
        <section class="comments-list">
            <div class="comment" style="background-color:rgba(255,255,255,0.3)">
                <c:forEach var="message" items="${page.result}" varStatus="i">
                    <div class="comment">
                        <a href="###" class="avatar">
                            <img src="${message.imgUrl}" style="margin-left: 10px"/>
                        </a>
                        <div class="content" style="padding-top: 0px;padding-bottom: 10px;">
                            <%--<div class="pull-right text-muted" style="margin-right: 30px">1 个小时前</div>--%>
                            <div style="margin-left: 10px"><a href="###"><strong>${message.nickName}</strong></a> </div>
                            <div class="text" style="margin-left: 10px">${message.message}</div>
                            <%--<div class="actions">--%>
                                <%--<a href="##" style="margin-left: 10px">回复</a>--%>
                            <%--</div>--%>
                        </div>
                    </div>
                </c:forEach>
                </div>
        </section>
    </div>
</div>
</section>

<!--分页信息..-->
<div id="page-info" style="margin-left:18%;margin-top:15px;position: absolute;width:855px;background-color: #EBEBEB;height: 80px;left: 0px;">
    <ul class="pager pager-loose">
        <c:if test="${page.pageNum <= 1}">
            <li><a href="javascript:void(0);">« 上一页</a></li>
        </c:if>
        <c:if test="${page.pageNum > 1}">
            <li class="previous"><a href="${app}/message_list?pageNum=${page.pageNum-1}&&id=${user.id}">« 上一页</a></li>
        </c:if>
        <c:forEach begin="${page.startPage}" end="${page.endPage}" var="pn">
            <c:if test="${page.pageNum==pn}">
                <li class="active"><a href="javascript:void(0);">${pn}</a></li>
            </c:if>
            <c:if test="${page.pageNum!=pn}">
                <li ><a href="${app}/message_list?pageNum=${pn}&&id=${user.id}">${pn}</a></li>
            </c:if>
        </c:forEach>

        <c:if test="${page.pageNum>=page.pages}">
            <li><a href="javascript:void(0);">下一页 »</a></li>
        </c:if>
        <c:if test="${page.pageNum<page.pages}">
            <li><a href="${app}/message_list?pageNum=${page.pageNum+1}&&id=${user.id}">下一页 »</a></li>
        </c:if>

    </ul>
</div>

<footer>
    <div class="reply-form" id="commentReplyForm2" style="width: 1096px;margin-left: 10%;margin-top: 80px;">
        <a href="###" class="avatar"><i class="icon-user icon-2x"></i></a>
        <form class="form" name="m_form" role="m_form" class="message-form" action="save_message?mid=${message.id}" method="post">
            <div class="form-group">
                <textarea class="form-control new-comment-text" rows="2" placeholder="撰写留言..." name="content">${message.content}</textarea>
            </div>
            <div class="form-group comment-user">
                <div class="row">
                    <div class="col-md-2"><button type="submit" class="btn btn-block btn-primary" id="btn_message" style="margin-left: 800px;"><i class="icon-ok"></i></button></div>
                </div>
            </div>
        </form>
    </div>
</footer>
</div>
<%--<form id="message_form" name="m_form" role="m_form" class="message-form" action="save_Message?mid=${message.id}" method="post">--%>
<%--<div class="commentAll" style="display:none" id="comment_reply_${message.id}">--%>
    <%--<!--评论区域 begin-->--%>
    <%--<div class="reviewArea clearfix">--%>
                                <%--<textarea id="comment_input_${message.id}"  class="content comment-input" placeholder="输入内容&hellip;" onkeyup="keyUP(this)" style="--%>
    <%--padding-top: 10px;--%>
    <%--padding-bottom: 10px;">${message.content}</textarea>--%>
        <%--<a class="plBtn" id="comment_${message.id}" onclick="_comment${message.id}" style="color: white;cursor: pointer;">评论</a>--%>
    <%--</div>--%>
    <%--<!--评论区域 end-->--%>
    <%--<div class="comment-show-first" id="comment-show-${message.id}">--%>

    <%--</div>--%>

<%--</div>--%>
<%--</div>--%>
<%--</form>--%>

<%@ include file="foot.jsp"%>
</body>
<script>
    //发表文章点击事件
    $("#btn_message").click(function(){
        // var val =  $("#fen").html();
        // if(val.trim()=='博客分类'){
        //     alert("请选择博客分类！");
        //     return;
        // }
        //
        // var tit = $("#txtTitle").val();
        // if(tit == null || tit.trim() == ""){
        //     alert("请输入文章标题！");
        //     return;
        // }
        // editor.sync();
        // var v1 = $("#content").val();
        // if(v1 == null || v1.trim() == ""){
        //     alert("文章内容为空！");
        //     return;
        // }
        alert(1111);
        $("#write_form").submit();

    });
</script>
</html>