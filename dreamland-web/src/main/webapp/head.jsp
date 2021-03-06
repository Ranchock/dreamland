<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="app" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>

<nav style="background: url(${app}/images/head1.png);height: 90px">
<div class="header">
    <div class="menu-btn">
        <div class="menu"></div>
    </div>
    <h1 class="logo">
        <a href="index.html">
            <span>Football</span>
            <img src="../res/img/logo.png" style="margin-top: 19px;">
        </a>
    </h1>
    <div class="nav">
        <a href="${app}/index_list" class="active">首页</a>
        <a href="${app}/index_list">热门</a>
        <a href="${app}/message_list?id=${user.id}">留言</a>
        <a href="${app}/list?id=${user.id}">个人空间</a>
        <a href="me.jsp">关于作者</a>
        <a href="${app}/writedream?id=${user.id}">写博客</a>
        <!-- 搜索框 -->
        <form method="post" action="${app}/index_list"  id="indexSearchForm" class="navbar-form navbar-right" role="search" style="margin-top: 0px;margin-right: 0px;margin-bottom: 0px;padding-left: 0px;padding-right: 0px;">
            <div class="form-group" >
                <input type="text" id="keyword" name="keyword" value="${keyword}" class="form-control" placeholder="请输入您要搜索的内容..." style="margin-top: 0px;margin-left: 0px;width: 268px;">
            </div>
            <button type="submit" class="btn btn-default" onclick="searchForm();" style="margin-top: 0px;">搜索</button>
           <%--<i onclick="searchForm();" class="icon icon-search" style="color: white"></i>--%>
        </form>
    </div>

    <nav/>
    <p class="welcome-text">

    <div style="position: absolute;margin-left: 980px;margin-top: -40px;height:85px;">
        <c:if test="${empty user}">
            <a name="tj_login" class="lb" href="login?error=login" style="color: #8f8680">[登录]</a>
            &nbsp;&nbsp;
            <a name="tj_login" class="lb" href="register" style="color: #8f8680">[注册]</a>
        </c:if>
        <c:if test="${not empty user}">
            <a name="tj_loginp" href="javascript:void(0);"   class="lb" onclick="personal('${user.id}');" style="color: #8f8680"><font color="#9370db">${user.nickName}, 欢迎您！</font></a>
            &nbsp;&nbsp;
            <a name="tj_login" class="lb" href="${app}/loginout" style="color: #8f8680">[退出]</a>
        </c:if>

    </div>
    </p>
</div>

<%--<div class="banner">
    <div class="cont w1000">
        <div class="title">
            <h3>FOOTBALL<br />BLOG</h3>
            <h4>well-balanced heart</h4>
        </div>
    </div>
</div>--%>
</nav>