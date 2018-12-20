<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人空间</title>

    <!--头部-->
    <link rel="stylesheet" type="text/css" href="../res/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="../res/css/main.css">


    <link href="${ctx}/css/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${ctx}/css/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet"/>

    <link href="${ctx}/css/zui/css/zui.min.css" rel="stylesheet"/>
    <link href="${ctx}/css/zui/css/zui-theme.min.css" rel="stylesheet"/>

    <link href="${ctx}/css/personal/personal.css" rel="stylesheet"/>
    <script type="text/javascript" src="${ctx}/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${ctx}/css/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${ctx}/css/zui/js/zui.min.js"></script>
    <script src="${ctx}/css/zui/lib/kindeditor/kindeditor.min.js"></script>

    <!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>

<%--头部--%>
<%@ include file="head.jsp"%>

    <!-- 左侧菜单栏-->
<div class="author-card follow-box">
    <div class="designer-card card-media" style="margin-left: 380px;" >
        <input type="hidden" name="creator" value="13149346">
        <div class="avatar-container-80 center" >
            <a href="#" title="${user.nickName}" class="avatar" target="_blank">
                <img src="${user.imgUrl}" width="80" height="80" alt="">
            </a>

        </div>

        <br/>
        <!--个人资料页面-->
        <div class="author-info">
            <p class="author-info-title">
                <a href="#" title="${user.nickName}"
                   class="title-content" target="_blank">${user.nickName}
                </a>
            </p>
            <div class="position-info">
                <span>成都&nbsp;|&nbsp;大数据工程师</span>
            </div>
            <div class="btn-area">
                <div class="js-project-focus-btn" style="margin-left: 20px">

                    <input type="button" title="添加关注" class="btn-default-main btn-current attention notfollow" value="关注"
                           z-st="follow">

                </div>
                <div style="margin-left: 30px;float: left">
                <input type="button" title="发私信" class="btn-default-secondary btn-current private-letter" value="私信"
                       onclick="" z-st="privateMsg">
                </div>
            </div>

            <div>
                <div style="width: 35px;height: 18px;background-color: #4cae4c;float: left;line-height: 15px;margin-top: 30px;margin-left: 42px">
                    <span style="color: white;font-size: 12px">等级</span>
                </div>
                <div style="width: 18px;height: 18px;background-color: #2b542c;float: left;line-height: 15px;margin-top: 30px;">
                    <span style="color: white;font-size: 12px">1</span>
                </div>


                <div style="width: 35px;height: 18px;background-color: #4cae4c;float: left;line-height: 15px;margin-top: 30px;margin-left: 20px">
                    <span style="color: white;font-size: 12px">梦博</span>
                </div>
                <div style="width: 18px;height: 18px;background-color: #2b542c;float: left;line-height: 15px;margin-top: 30px;">
                    <span style="color: white;font-size: 12px">2</span>
                </div>

                <div style="width: 35px;height: 18px;background-color: #4cae4c;float: left;line-height: 15px;margin-top: 30px;margin-left: 20px">
                    <span style="color: white;font-size: 12px">下载</span>
                </div>
                <div style="width: 18px;height: 18px;background-color: #2b542c;float: left;line-height: 15px;margin-top: 30px;">
                    <span style="color: white;font-size: 12px">2</span>
                </div>
            </div>

            <div style="float: left;margin-top: 40px; margin-left: 130px;">
                <a href="${ctx}/profile"><i class="icon icon-edit"></i><span style="margin-left: 10px">修改个人资料</span></a>
            </div>
        </div>
    </div>


    <!-- 梦分类 -->
    <div class="dreamland-diff" style="margin-left: 0px;left: 430px;" >
        <div class="customer" style="height: 40px;background-color:#262626;line-height: 40px ">
            <font color="white" size="2.8" face="黑体" style="margin-top: 10px;margin-left: 10px">博文分类</font>
        </div>
        <div class="list-group">
            <a onclick="changeToActive('category_x',null,null)" class="list-group-item active" id="category_x">全部(${page.total})</a>
            <c:forEach items="${categorys}" var="category" varStatus="sta">
                <a onclick="changeToActive('category_${sta.index}','${category.category}',null)" class="list-group-item" id="category_${sta.index}">${category.category}(${category.num})</a>
            </c:forEach>

        </div>
    </div>

    <!-- 关注 -->
    <div class="dreamland-see" id="dreamland-see" style=" margin-top: 650px;margin-left: 0px;left: 430px;">
        <div class="customer" style="height: 40px;background-color:#262626;line-height: 40px ">
            <font color="white" size="2.8" face="黑体" style="margin-top: 10px;margin-left: 10px">关注(8人)</font>
        </div>
        <br/>
        <div class="author clearfix" style="margin-left: 10px">
            <div>
                <a href="/users/31123326/" target="_blank" rel="nofollow" style="height: 50px" onclick="">
                     <img src="images/icon_m.jpg">
                </a>
            </div>
            <a href="/users/31123326/" target="_blank" onclick="" >
                <h2 class="author-h2">
                   白龙马
                </h2>
            </a>
        </div>
    </div>

    <!--被关注-->
    <div class="dreamland-bysee" style="margin-left: 0px;left: 430px;">
        <div class="customer" style="height: 40px;background-color:#262626;line-height: 40px ">
            <font color="white" size="2.8" face="黑体" style="margin-top: 10px;margin-left: 10px">被关注(8人)</font>
        </div>
        <br/>
        <div class="author clearfix" style="margin-left: 10px">
            <div>
                <a href="/users/31123326/" target="_blank" rel="nofollow" style="height: 50px" onclick="">
                     <img src="images/icon_m.jpg">
                </a>
            </div>
            <a href="/users/31123326/" target="_blank" onclick="" >
                <h2 class="author-h2">
                    白龙马
                </h2>
            </a>
        </div>
    </div>

</div>

    <!-- 中间内容展示 -->
    <div class="dreamland-content" style="background-color: white">
        <div class="content-bar">
            <div id="fa-dreamland" style="background-color: #B22222;width: 120px;text-align: center;height: 40px;line-height: 40px;float: left" onclick="release_dreamland();">

                 <span id="fa-span" style="color: white">发布的文章</span>

            </div>

            <div id="manage-dreamland" style="background-color: #F0F0F0;width: 120px;text-align: center;height: 40px;line-height: 40px;float: left;margin-left: 20px" onclick="manage_dreamland();">

                <span id="manage-span" style="color: black">管理文章</span>

            </div>

            <div id="personal-div" style="background-color: #F0F0F0;width: 120px;text-align: center;height: 40px;line-height: 40px;float: left;margin-left: 20px" onclick="personal_dreamland();">

                <span id="personal-span"  style="color: black">私密文章</span>

            </div>

        </div>

        <!-- 发布的文章 -->
        <div id="release-dreamland" style="height: 700px;margin-top: 50px;width: 100%">
            <ul style="font-size: 12px" id="release-dreamland-ul">
                <c:forEach var="cont" items="${page.result}" varStatus="i">
                    <li class="dreamland-fix">
                        <a href="${ctx}/watch?cid=${cont.id}">${cont.title}</a>
                        <span class="bar-read">评论 (${cont.commentNum})</span>
                        <span class="bar-commend">${cont.upvote}人阅读</span>
                        <hr/>
                    </li>
                </c:forEach>

            </ul>

            <div style="float: left;position: absolute;bottom: 1080px;margin-left: 20px">

                <ul class="pager pager-loose">
                    <c:if test="${page.pageNum <= 1}">
                        <li class="previous"><a href="javascript:void(0);">« 上一页</a></li>
                    </c:if>
                    <c:if test="${page.pageNum > 1}">
                        <li class="previous"><a href="${ctx}/list?pageNum=${page.pageNum-1}&&id=${user.id}">« 上一页</a></li>
                    </c:if>
                    <c:forEach begin="1" end="${page.pages}" var="pn">
                        <c:if test="${page.pageNum==pn}">
                            <li class="active"><a href="javascript:void(0);">${pn}</a></li>
                        </c:if>
                        <c:if test="${page.pageNum!=pn}">
                            <li ><a href="${ctx}/list?pageNum=${pn}&&id=${user.id}">${pn}</a></li>
                        </c:if>
                    </c:forEach>

                    <c:if test="${page.pageNum>=page.pages}">
                        <li><a href="javascript:void(0);">下一页 »</a></li>
                    </c:if>
                    <c:if test="${page.pageNum<page.pages}">
                        <li><a href="${ctx}/list?pageNum=${page.pageNum+1}&&id=${user.id}">下一页 »</a></li>
                    </c:if>

                </ul>
            </div>

        </div>

        <!-- 管理文章 -->
        <div id="update-dreamland" style="height: 700px;margin-top: 50px;width: 100%;display: none" >
            <ul style="font-size: 12px" id="update-dreamland-ul">
                <c:forEach var="cont" items="${page.result}" varStatus="i">
                    <li class="dreamland-fix">
                        <a href="${ctx}/watch?cid=${cont.id}">${cont.title}</a>
                        <a href="${ctx}/deleteContent?cid=${cont.id}"><span class="bar-delete">删除</span></a>
                        <a href="${ctx}/writedream?cid=${cont.id}"><span class="bar-update">修改</span></a>
                        <hr/>
                    </li>
                </c:forEach>
            </ul>


            <div style="float: left;position: absolute;bottom: 1080px;margin-left: 20px" id="update-dreamland-div">
                <ul class="pager pager-loose" id="update-dreamland-fy">
                    <c:if test="${page.pageNum <= 1}">
                        <li class="previous"><a href="javascript:void(0);">« 上一页</a></li>
                    </c:if>
                    <c:if test="${page.pageNum > 1}">
                        <li class="previous"><a onclick="turnPage(${page.pageNum-1})">« 上一页</a></li>
                    </c:if>
                    <c:forEach begin="1" end="${page.pages}" var="pn">
                        <c:if test="${page.pageNum==pn}">
                            <li class="active"><a href="javascript:void(0);">${pn}</a></li>
                        </c:if>
                        <c:if test="${page.pageNum!=pn}">
                            <li ><a onclick="turnPage(${pn})">${pn}</a></li>
                        </c:if>
                    </c:forEach>

                    <c:if test="${page.pageNum>=page.pages}">
                        <li><a href="javascript:void(0);">下一页 »</a></li>
                    </c:if>
                    <c:if test="${page.pageNum<page.pages}">
                        <li><a onclick="turnPage(${page.pageNum+1})">下一页 »</a></li>
                    </c:if>

                </ul>

            </div>
        </div>

        <!--私密文章-->
        <div id="personal-dreamland" style="height: 700px;margin-top: 50px;width: 100%;display: none">
            <ul style="font-size: 12px">
                <c:forEach var="cont" items="${page2.result}" varStatus="i">
                <li class="dreamland-fix">
                    <a href="${ctx}/watch?cid=${cont.id}">${cont.title}</a>
                    <a href="${ctx}/deleteContent?cid=${cont.id}"><span class="bar-delete">删除</span></a>
                    <a href="${ctx}/writedream?cid=${cont.id}"><span class="bar-update">修改</span></a>
                    <hr/>
                </li>
                </c:forEach>

            </ul>

            <div style="float: left;position: absolute;bottom: 1080px;margin-left: 20px">
            <ul class="pager pager-loose">
                <c:if test="${page2.pageNum <= 1}">
                    <li class="previous"><a href="javascript:void(0);">« 上一页</a></li>
                </c:if>
                <c:if test="${page2.pageNum > 1}">
                    <li class="previous"><a href="${ctx}/list?pageNum=${page2.pageNum-1}&&id=${user.id}">« 上一页</a></li>
                </c:if>
                <c:forEach begin="1" end="${page.pages}" var="pn">
                    <c:if test="${page2.pageNum==pn}">
                        <li class="active"><a href="javascript:void(0);">${pn}</a></li>
                    </c:if>
                    <c:if test="${page2.pageNum!=pn}">
                        <li ><a href="${ctx}/list?pageNum=${pn}&&id=${user.id}">${pn}</a></li>
                    </c:if>
                </c:forEach>

                <c:if test="${page2.pageNum>=page2.pages}">
                    <li><a href="javascript:void(0);">下一页 »</a></li>
                </c:if>
                <c:if test="${page2.pageNum<page2.pages}">
                    <li><a href="${ctx}/list?pageNum=${page2.pageNum+1}&&id=${user.id}">下一页 »</a></li>
                </c:if>

            </ul>
            </div>
        </div>
        <div style="background-color: #EBEBEB;width:800px;height: 20px">
        </div>

        <!-- 热门博文 -->
        <div class="hot-dreamland" style="height: 1020px">
            <div style="text-align: center;margin-top: 20px">热文推荐
                <span style="color:#B22222 ">hot</span>
            </div>

            <div style="height: 700px;margin-top: 30px;width: 100%">
                <ul style="font-size: 12px">
                    <c:forEach var="cont" items="${hotPage.result}" varStatus="i">
                    <li class="dreamland-fix">
                        <a>${cont.title}</a>
                        <span class="bar-read">评论 (${cont.commentNum} )</span>
                        <span class="bar-commend">${cont.upvote}人阅读</span>


                        <hr/>
                    </li>
                    </c:forEach>


                </ul>
            </div>

            <div style="float: left;position: absolute;bottom: 10px;margin-left: 20px">
            <ul class="pager pager-loose">
                <c:if test="${hotPage.pageNum <= 1}">
                    <li class="previous"><a href="javascript:void(0);">« 上一页</a></li>
                </c:if>
                <c:if test="${hotPage.pageNum > 1}">
                    <li class="previous"><a href="${ctx}/list?pageNum=${hotPage.pageNum-1}&&id=${user.id}">« 上一页</a></li>
                </c:if>
                <c:forEach begin="1" end="${hotPage.pages}" var="pn">
                    <c:if test="${hotPage.pageNum==pn}">
                        <li class="active"><a href="javascript:void(0);">${pn}</a></li>
                    </c:if>
                    <c:if test="${hotPage.pageNum!=pn}">
                        <li ><a href="${ctx}/list?pageNum=${pn}&&id=${user.id}">${pn}</a></li>
                    </c:if>
                </c:forEach>

                <c:if test="${hotPage.pageNum>=hotPage.pages}">
                    <li><a href="javascript:void(0);">下一页 »</a></li>
                </c:if>
                <c:if test="${hotPage.pageNum<hotPage.pages}">
                    <li><a href="${ctx}/list?pageNum=${hotPage.pageNum+1}&&id=${user.id}">下一页 »</a></li>
                </c:if>

            </ul>
            </div>
        </div>

    </div>

<!--右侧-->
<div class="ibx-advice" onmouseover="changeBackColor();" onmouseout="back2color();">
    <a href="${ctx}/writedream?id=${user.id}"><span class="glyphicon glyphicon-edit" aria-hidden="true" style="color:#1b1b1b;font-size:30px;" title="写梦"></span></a>
</div>

</body>
<script>
    //博客分类点击事件
    function changeToActive(id,category,pageNum) {
        var ulist_id = "";
        if(typeof (id)=="object"){
            ulist_id = id.id;
        }else{
            ulist_id = id;
        }
        $("ul").remove("#release-dreamland-ul");
        $("ul").remove("#release-dreamland-fy");
        $(".list-group-item").attr("class","list-group-item");
        $("#"+ulist_id).attr("class","list-group-item active");
        $.ajax({
            type: 'post',
            url: '/findByCategory',
            data: {"category": category,"pageNum":pageNum},
            dataType: 'json',
            success: function (data) {
                var pageCate = data["pageCate"];
                if(pageCate=="fail"){
                    window.location.href = "/login.jsp";
                }else{

                    var ucList = pageCate.result;
                    var startHtml = "<ul style='font-size: 12px' id='release-dreamland-ul'>";
                    var endHtml = "</ul>";
                    if(ucList!=null){
                        $(ucList).each(function () {
                            var contHtml = "<li class='dreamland-fix'><a href='${ctx}/watch?cid="+this.id+"'>"+this.title+"</a> <span class='bar-read'>评论 ("+this.commentNum+")</span>"
                                +"<span class='bar-commend'>"+this.upvote+"人阅读</span><hr/></li>";
                            startHtml = startHtml + contHtml;
                        });
                        var okHtml = startHtml + endHtml;

                        //分页
                        var stPageHtml = " <ul id='release-dreamland-fy' class='pager pager-loose'>";
                        if(pageCate.pageNum<=1){
                            stPageHtml = stPageHtml + " <li class='previous'><a href='javascript:void(0);'>« 上一页</a></li>";
                        }else if(pageCate.pageNum>1){
                            var num = parseInt(pageCate.pageNum) -1;
                            stPageHtml = stPageHtml + "<li class='previous'><a onclick='changeToActive("+ulist_id+",\""+category+"\","+num+")'>« 上一页</a></li>";
                        }

                        var foHtml = "";
                        for(var i = 1 ;i<= pageCate.pages;i++){
                            if(pageCate.pageNum==i){
                                foHtml = foHtml+ "<li class='active'><a href='javascript:void(0);'>"+i+"</a></li>";
                            }else{
                                foHtml = foHtml+ "<li ><a onclick='changeToActive("+ulist_id+",\""+category+"\","+i+")'>"+i+"</a></li>";
                            }
                        }

                        var teHtml = "";
                        if(pageCate.pageNum>=pageCate.pages){
                            teHtml = " <li><a href='javascript:void(0);'>下一页 »</a></li>";
                        }else if(pageCate.pageNum<pageCate.pages){
                            var num = parseInt(pageCate.pageNum) + 1;
                            teHtml = "<li><a onclick='changeToActive("+ulist_id+",\""+category+"\","+num+")'>下一页 »</a></li>";
                        }
                        var endPageHtml = "</ul>";

                        var pageOkHtml = stPageHtml + foHtml + teHtml +endPageHtml;
                    }

                    $("#release-dreamland").append(okHtml);
                    $("#release-dreamland-div").append(pageOkHtml);
                }
            }

        });
    }

    //管理博客文章分页点击事件
    function turnPage(pageNum) {
        $("ul").remove("#update-dreamland-ul");
        $("ul").remove("#update-dreamland-fy");
        $.ajax({
            type: 'post',
            url: '/findByCategory',
            data: {"pageNum": pageNum},
            dataType: 'json',
            success: function (data) {
                var pageCate = data["pageCate"];
                if(pageCate=="fail"){
                    window.location.href = "/login.jsp";
                }else{
                    var ucList = pageCate.result;
                    var startHtml = " <ul style='font-size: 12px' id='update-dreamland-ul'>";
                    var endHtml = "</ul>";
                    if(ucList!=null) {
                        $(ucList).each(function () {
                            var contHtml = " <li class='dreamland-fix'> <a href='${ctx}/watch?cid="+this.id+"'>"+this.title+"</a><a href='${ctx}/deleteContent?cid="+this.id+"'><span class='bar-delete'>删除</span></a>"
                                +"<a href='${ctx}/writedream?cid="+this.id+"'><span class='bar-update'>修改</span></a><hr/></li>";
                            startHtml = startHtml + contHtml;
                        });
                        var okHtml = startHtml + endHtml;

                        //分页
                        var stPageHtml = "<ul class='pager pager-loose' id='update-dreamland-fy'>";
                        if(pageCate.pageNum<=1){
                            stPageHtml = stPageHtml + "  <li class='previous'><a href='javascript:void(0);'>« 上一页</a></li>";
                        }else if(pageCate.pageNum>1){
                            var num = parseInt(pageCate.pageNum) -1;
                            stPageHtml = stPageHtml + "<li class='previous'><a onclick='turnPage("+num+")'>« 上一页</a></li>";
                        }

                        var foHtml = "";
                        for(var i = 1 ;i<= pageCate.pages;i++){
                            if(pageCate.pageNum==i){
                                foHtml = foHtml+ "  <li class='active'><a href='javascript:void(0);'>"+i+"</a></li>";
                            }else{
                                foHtml = foHtml+ "<li ><a onclick='turnPage("+i+")'>"+i+"</a></li>";
                            }
                        }

                        var teHtml = "";
                        if(pageCate.pageNum>=pageCate.pages){
                            teHtml = " <li><a href='javascript:void(0);'>下一页 »</a></li>";
                        }else if(pageCate.pageNum<pageCate.pages){
                            var num = parseInt(pageCate.pageNum) + 1;
                            teHtml = "<li><a onclick='turnPage("+num+")'>下一页 »</a></li>";
                        }
                        var endPageHtml = "</ul>";

                        var pageOkHtml = stPageHtml + foHtml + teHtml +endPageHtml;
                    }

                    $("#update-dreamland").append(okHtml);
                    $("#update-dreamland-div").append(pageOkHtml);
                }
            }
        });
    }

    //管理文章点击事件
    function manage_dreamland() {
        document.getElementById("fa-dreamland").style.backgroundColor = "#F0F0F0";
        document.getElementById("fa-span").style.color = "black";

        document.getElementById("personal-div").style.backgroundColor = "#F0F0F0";
        document.getElementById("personal-span").style.color = "black";

        document.getElementById("manage-dreamland").style.backgroundColor = "#B22222";
        document.getElementById("manage-span").style.color = "white";

        document.getElementById("release-dreamland").style.display = "none";
        document.getElementById("personal-dreamland").style.display = "none";
        document.getElementById("update-dreamland").style.display = "";
    }


    //发布的文章点击事件
    function release_dreamland() {
        document.getElementById("fa-dreamland").style.backgroundColor = "#B22222";
        document.getElementById("fa-span").style.color = "white";

        document.getElementById("manage-dreamland").style.backgroundColor = "#F0F0F0";
        document.getElementById("manage-span").style.color = "black";

        document.getElementById("personal-div").style.backgroundColor = "#F0F0F0";
        document.getElementById("personal-span").style.color = "black";

        document.getElementById("release-dreamland").style.display = "";
        document.getElementById("personal-dreamland").style.display = "none";
        document.getElementById("update-dreamland").style.display = "none";

    }
    //私密文章点击事件
    function personal_dreamland() {
        document.getElementById("fa-dreamland").style.backgroundColor = "#F0F0F0";
        document.getElementById("fa-span").style.color = "black";

        document.getElementById("personal-div").style.backgroundColor = "#B22222";
        document.getElementById("personal-span").style.color = "white";

        document.getElementById("manage-dreamland").style.backgroundColor = "#F0F0F0";
        document.getElementById("manage-span").style.color = "black";

        document.getElementById("release-dreamland").style.display = "none";
        document.getElementById("personal-dreamland").style.display = "";
        document.getElementById("update-dreamland").style.display = "none";


    }

    //私密文章分页点击事件
    function personTurnPage(pageNum) {
        $("ul").remove("#personal-dreamland-ul");
        $("ul").remove("#personal-dreamland-fy");
        $.ajax({
            type: 'post',
            url: '/findPersonal',
            data: {"pageNum": pageNum},
            dataType: 'json',
            success: function (data) {
                var pageCate = data["page2"];
                if(pageCate=="fail"){
                    window.location.href = "/login.jsp";
                }else{
                    var ucList = pageCate.result;
                    var startHtml = " <ul style='font-size: 12px' id='personal-dreamland-ul'>";
                    var endHtml = "</ul>";
                    if(ucList!=null) {
                        $(ucList).each(function () {
                            var contHtml = " <li class='dreamland-fix'> <a href='${ctx}/watch?cid="+this.id+"'>"+this.title+"</a> <a href='${ctx}/deleteContent?cid="+this.id+"'><span class='bar-delete'>删除</span></a>"
                                +"<a href='${ctx}/writedream?cid="+this.id+"'><span class='bar-update'>修改</span></a><hr/></li>";
                            startHtml = startHtml + contHtml;
                        });
                        var okHtml = startHtml + endHtml;

                        //分页
                        var stPageHtml = "<ul class='pager pager-loose' id='personal-dreamland-fy'>";
                        if(pageCate.pageNum<=1){
                            stPageHtml = stPageHtml + "  <li class='previous'><a href='javascript:void(0);'>« 上一页</a></li>";
                        }else if(pageCate.pageNum>1){
                            var num = parseInt(pageCate.pageNum) -1;
                            stPageHtml = stPageHtml + "<li class='previous'><a onclick='personTurnPage("+num+")'>« 上一页</a></li>";
                        }

                        var foHtml = "";
                        for(var i = 1 ;i<= pageCate.pages;i++){
                            if(pageCate.pageNum==i){
                                foHtml = foHtml+ "  <li class='active'><a href='javascript:void(0);'>"+i+"</a></li>";
                            }else{
                                foHtml = foHtml+ "<li ><a onclick='personTurnPage("+i+")'>"+i+"</a></li>";
                            }
                        }

                        var teHtml = "";
                        if(pageCate.pageNum>=pageCate.pages){
                            teHtml = " <li><a href='javascript:void(0);'>下一页 »</a></li>";
                        }else if(pageCate.pageNum<pageCate.pages){
                            var num = parseInt(pageCate.pageNum) + 1;
                            teHtml = "<li><a onclick='personTurnPage("+num+")'>下一页 »</a></li>";
                        }
                        var endPageHtml = "</ul>";

                        var pageOkHtml = stPageHtml + foHtml + teHtml +endPageHtml;
                    }

                    $("#personal-dreamland").append(okHtml);
                    $("#personal-dreamland-div").append(pageOkHtml);
                }
            }
        });
    }

    $(function () {
        var val = "${manage}";
        if(val=="manage"){
            manage_dreamland();
        }
    });

    //页面加载完成函数
    $(function () {
        var num = "${categorys.size()}";
        var tomVal = document.getElementById("dreamland-see").style.marginTop;
        var hgt = parseInt(num)*40+parseInt(tomVal.split("px")[0]);
        document.getElementById("dreamland-see").style.marginTop = hgt + "px";

        var val = "${manage}";
        if(val=="manage"){
            manage_dreamland();
        }
    });

</script>
</html>