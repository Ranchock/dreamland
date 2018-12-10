<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>


<div class="header">
    <div class="menu-btn">
        <div class="menu"></div>
    </div>
    <h1 class="logo">
        <a href="index.html">
            <span>Football</span>
            <img src="../res/img/logo.png">
        </a>
    </h1>
    <div class="nav">
        <a href="index.html" class="active">首页</a>
        <a href="whisper.html">热门</a>
        <a href="leacots.html">留言</a>
        <a href="album.html">我的文章</a>
        <a href="about.html">个人空间</a>
    </div>

    <ul class="layui-nav header-down-nav">
        <li class="layui-nav-item"><a href="index.html" class="active">首页</a></li>
        <li class="layui-nav-item"><a href="whisper.html">热门</a></li>
        <li class="layui-nav-item"><a href="leacots.html">留言</a></li>
        <li class="layui-nav-item"><a href="album.html">我的文章</a></li>
        <li class="layui-nav-item"><a href="${ctx}/list?id=${user.id}">个人空间</a></li>
    </ul>
    <p class="welcome-text">

    <div style="position: absolute;margin-left: 980px;margin-top: -40px;">
        <c:if test="${empty user}">
            <a name="tj_login" class="lb" href="login?error=login" style="color: #8f8680">[登录]</a>
            &nbsp;&nbsp;
            <a name="tj_login" class="lb" href="register" style="color: #8f8680">[注册]</a>
        </c:if>
        <c:if test="${not empty user}">
            <a name="tj_loginp" href="javascript:void(0);"   class="lb" onclick="personal('${user.id}');" style="color: #8f8680"><font color="#9370db">${user.nickName}, 欢迎您！</font></a>
            &nbsp;&nbsp;
            <a name="tj_login" class="lb" href="${ctx}/loginout" style="color: #8f8680">[退出]</a>
        </c:if>

    </div>
    </p>
</div>

<div class="banner">
    <div class="cont w1000">
        <div class="title">
            <h3>FOOTBALL<br />BLOG</h3>
            <h4>well-balanced heart</h4>
        </div>
        <%--<div class="amount">
            <p><span class="text">访问量</span><span class="access">1000</span></p>
            <p><span class="text">日志</span><span class="daily-record">1000</span></p>
        </div>--%>
    </div>
</div>