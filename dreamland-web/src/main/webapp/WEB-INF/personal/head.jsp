<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="app" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>

<nav class="navbar navbar-inverse" role="navigation">
    <div class="container-fluid">
        <!-- 导航头部 -->
        <div class="navbar-header">
            <!-- 移动设备上的导航切换按钮 -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse-example">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- 品牌名称或logo -->
            <a class="navbar-brand" href="javascript:void(0);">个人空间</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        <!-- 导航项目 -->
        <div class="collapse navbar-collapse navbar-collapse-example">
            <!-- 一般导航项目 -->
            <ul class="nav navbar-nav">
                <li class="active"><a href="your/nice/url">人生就怕坐上四艘船：一艘为名；一艘为利；一艘为色，一艘为气。</a></li>&nbsp;&nbsp;
                <li style="margin-left: 250px"><a href="${app}/index_list">博客首页</a></li>
            </ul>
            <ul class="nav navbar-nav" >
                <li><a href="your/nice/url">个人简介</a></li>&nbsp;&nbsp;
            </ul>

            <ul class="nav navbar-nav">
                <li><a href="${app}/writedream?id=${user.id}">写博客</a></li>
            </ul>
            <ul class="nav navbar-nav" style="margin-left: 200px">
                <li><a href="${app}/list?id=${user.id}">${user.nickName}

                </a></li>
            </ul>
            <img src="images/q.png" width="30" style="margin-top: 4px"/>
        </div>
    </div>

</nav>