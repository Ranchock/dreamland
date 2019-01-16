<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>FootBall land&足球大陆</title>
    <!--引入BootStrap样式-->
    <link href="${ctx}/css/zui/css/zui.min.css" rel="stylesheet"/>
    <link href="${ctx}/css/zui/css/zui-theme.min.css" rel="stylesheet"/>


</head>
<body>
<script type="text/javascript" src="${ctx}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${ctx}/css/zui/js/zui.min.js"></script>



<div class="message" style="width: 1096px" >
<div class="comments" style="margin-left: 450px;width: 1000px;background: #d8d8d8">
    <header>
        <div class="pull-right"><a href="#commentReplyForm2" class="btn btn-primary"><i class="icon-comment-alt"></i> 发表评论</a></div>
        <h3>所有评论</h3>
    </header>
    <section class="comments-list">
        <div class="comment">
            <a href="###" class="avatar">
                <i class="icon-camera-retro icon-2x"></i>
            </a>
            <div class="content">
                <div class="pull-right text-muted">3 个小时前</div>
                <div><a href="###"><strong>张士超</strong></a></div>
                <div class="text">今天玩的真开心！~~~~~~</div>
                <div class="actions">
                    <a href="##">回复</a>
                </div>
            </div>
            <div class="comments-list">
                <c:forEach var="message" items="${page.result}" varStatus="i">
                    <div class="comment">
                        <a href="###" class="avatar">
                            <i class="icon-cube-alt icon-2x"></i>
                        </a>
                        <div class="content">
                            <div class="pull-right text-muted">1 个小时前</div>
                            <div><a href="###"><strong>${user.name}</strong></a> <span class="text-muted">回复</span> <a href="###">Catouse</a></div>
                            <div class="text">${message.message}</div>
                            <div class="actions">
                                <a href="##">回复</a>
                            </div>
                        </div>
                    </div>
                </c:forEach>

                    </div>
                </div>
                <div class="comment">
                    <a href="###" class="avatar">
                        <i class="icon-heart-empty icon-2x"></i>
                    </a>
                    <div class="content">
                        <div class="pull-right text-muted">30 分钟前</div>
                        <div><a href="###"><strong>华师大第一美女</strong></a> <span class="text-muted">回复</span> <a href="###">张士超</a></div>
                        <div class="text">很开心~~~</div>
                        <div class="actions">
                            <a href="##">回复</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer>
        <div class="reply-form" id="commentReplyForm2">
            <a href="###" class="avatar"><i class="icon-user icon-2x"></i></a>
            <form class="form">
                <div class="form-group">
                    <textarea class="form-control new-comment-text" rows="2" placeholder="撰写评论..."></textarea>
                </div>
                <div class="form-group comment-user">
                    <div class="row">
                        <div class="col-md-3">
                            <span class="pull-right">或者</span>
                            <a href="#">登录</a> &nbsp;<a href="##">注册</a>
                        </div>
                        <div class="col-md-7">
                            <div class="form-group">
                                <input type="text" class="form-control" id="nameInputEmail1" placeholder="输入评论显示名称">
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="输入电子邮件（不会在评论显示）">
                            </div>
                        </div>
                        <div class="col-md-2"><button type="submit" class="btn btn-block btn-primary"><i class="icon-ok"></i></button></div>
                    </div>
                </div>
            </form>
        </div>
    </footer>
</div>
    <div class="commentAll" style="display:none" id="comment_reply_${cont.id}">
        <!--评论区域 begin-->
        <div class="reviewArea clearfix">
                                <textarea id="comment_input_${cont.id}"  class="content comment-input" placeholder="输入内容&hellip;" onkeyup="keyUP(this)" style="
    padding-top: 10px;
    padding-bottom: 10px;"></textarea>
            <a class="plBtn" id="comment_${cont.id}" onclick="_comment(${cont.id},${user.id==null?0:user.id},${cont.uId})" style="color: white;cursor: pointer;">评论</a>
        </div>
        <!--评论区域 end-->
        <div class="comment-show-first" id="comment-show-${cont.id}">

        </div>

    </div>
</div>


</body>
</html>