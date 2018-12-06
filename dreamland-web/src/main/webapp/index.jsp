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
    <link href="${ctx}/css/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${ctx}/css/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet"/>
    <link href="${ctx}/css/zui/css/zui.min.css" rel="stylesheet"/>
    <link href="${ctx}/css/zui/css/zui-theme.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${ctx}/css/reply/css/style.css">
    <link rel="stylesheet" href="${ctx}/css/reply/css/comment.css">
    <link rel="stylesheet" href="${ctx}/css/index.css">

</head>
<body>

<script type="text/javascript" src="${ctx}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${ctx}/css/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctx}/css/zui/js/zui.min.js"></script>
<script type="text/javascript" src="${ctx}/css/reply/js/jquery.flexText.js"></script>

<div class="container">
    <div style="color: #8f8680">
        <h1>FootBall land&足球大陆</h1>
    </div>
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



    <nav class="navbar navbar-inverse">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-menu" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="javascript:void(0);">首页</a>
        </div>
        <div id="navbar-menu" class="collapse navbar-collapse" >
            <ul class="nav navbar-nav" >
                <li class="active"><a href="#">热门步行街</a></li>
                <li><a href="#">最新推荐</a></li>
                <li><a href="#">简介</a></li>
                <li><a href="#">问答</a></li>
                <li><a href="#">我的文章</a></li>
                <li><a href="${ctx}/list?id=${user.id}">个人空间</a></li>
            </ul>
        </div>

        <form class="navbar-form navbar-right" role="search" style="margin-top: -35px;margin-right: 10px">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Search">
            </div>
            <!--<button type="submit" class="btn btn-default">Submit</button>-->
            &nbsp; &nbsp;<i class="icon icon-search" style="color: white"></i>
        </form>

    </nav>

    <div id="content" class="row-fluid">
        <div class="col-md-9"  style="background-color: #9de0ff;">
            <div id="content_col" class="content-main">
                <c:forEach var="cont" items="${page.result}" varStatus="i">
                    <!-- 正文开始 -->

                    <div class="content-text">

                        <div class="author clearfix">
                            <div>
                                <a href="#" target="_blank" rel="nofollow" style="height: 35px">
                                     <img src="${cont.imgUrl}">
                                </a>
                            </div>
                            <a href="#" target="_blank">
                                <h2 class="author-h2">
                                        ${cont.nickName}
                                </h2>
                            </a>
                        </div>

                        <h2>${cont.title}</h2>
                            ${cont.content}
                        <div style="height: 5px"></div>
                        <div class="stats">
                            <!-- 笑脸、评论数等 -->
                            <span class="stats-vote"><i id="${cont.id}" class="number">${cont.upvote}</i> 赞</span>
                            <span class="stats-comments">
                    <span class="dash"> · </span>
                         <a  onclick="reply(${cont.id},${cont.uId});">
                              <i class="number" id="comment_num_${cont.id}">${cont.commentNum}</i> 评论
                          </a>
                    </span>
                        </div>
                        <div style="height: 5px"></div>
                        <div class="stats-buttons bar clearfix">
                            <a style="cursor: pointer;" onclick="upvote_click(${cont.id},1);">
                                <i class="icon icon-thumbs-o-up icon-2x"></i>
                                <span class="number hidden" id="up_${cont.id}">${cont.upvote}</span>
                            </a>
                            &nbsp;
                            <a style="cursor: pointer;" onclick="upvote_click(${cont.id},-1);">
                                <i class="icon icon-thumbs-o-down icon-2x"></i>
                                <span class="number hidden" id="down_${cont.id}">${cont.downvote}</span>
                            </a>
                            &nbsp;
                            <a style="cursor: pointer;" onclick="reply(${cont.id},${cont.uId});" title="点击打开或关闭">
                                <i class="icon icon-comment-alt icon-2x"></i>
                            </a>
                        </div>
                        <div class="single-share">
                            <a class="share-wechat" data-type="wechat" title="分享到微信" rel="nofollow" style="margin-left:18px;color: grey;cursor: pointer; text-decoration:none;">
                                <i class="icon icon-wechat icon-2x"></i>
                            </a>
                            <a class="share-qq" data-type="qq" title="分享到QQ" rel="nofollow" style="margin-left:18px;color: grey;cursor: pointer; text-decoration:none;">
                                <i class="icon icon-qq icon-2x"></i>
                            </a>
                            <a  class="share-weibo" data-type="weibo" title="分享到微博" rel="nofollow" style="margin-left:18px;color: grey;cursor: pointer; text-decoration:none;">
                                <i class="icon icon-weibo icon-2x"></i>
                            </a>
                        </div>
                        <br/>
                        &nbsp;
                        <div class="commentAll" style="display:none" id="comment_reply_${cont.id}">
                            <!--评论区域 begin-->
                            <div class="reviewArea clearfix">
                                <textarea class="content comment-input" placeholder="Please enter a comment&hellip;" onkeyup="keyUP(this)"></textarea>
                                <a class="plBtn" id="comment_${cont.id}" onclick="_comment(${cont.id},${user.id==null?0:user.id},${cont.uId})" style="color: white;cursor: pointer;">评论</a>
                            </div>
                            <!--评论区域 end-->
                            <div class="comment-show-first" id="comment-show-${cont.id}">

                            </div>

                        </div>

                        <div class="single-clear">

                        </div>
                    </div>
                    <!-- 正文结束 -->
                    <div style="position: absolute;width:855px;background-color: #EBEBEB;height: 10px;left: 0px">
                    </div>
                </c:forEach>
            </div>



            <!--分页信息-->
            <div id="page-info" style="position: absolute;width:855px;background-color: #EBEBEB;height: 80px;left: 0px;">
                <ul class="pager pager-loose">
                    <c:if test="${page.pageNum <= 1}">
                        <li><a href="javascript:void(0);">« 上一页</a></li>
                    </c:if>
                    <c:if test="${page.pageNum > 1}">
                        <li class="previous"><a href="${ctx}/index_list?pageNum=${page.pageNum-1}&&id=${user.id}">« 上一页</a></li>
                    </c:if>
                    <c:forEach begin="1" end="${page.pages}" var="pn">
                        <c:if test="${page.pageNum==pn}">
                            <li class="active"><a href="javascript:void(0);">${pn}</a></li>
                        </c:if>
                        <c:if test="${page.pageNum!=pn}">
                            <li ><a href="${ctx}/index_list?pageNum=${pn}&&id=${user.id}">${pn}</a></li>
                        </c:if>
                    </c:forEach>

                    <c:if test="${page.pageNum>=page.pages}">
                        <li><a href="javascript:void(0);">下一页 »</a></li>
                    </c:if>
                    <c:if test="${page.pageNum<page.pages}">
                        <li><a href="${ctx}/index_list?pageNum=${page.pageNum+1}&&id=${user.id}">下一页 »</a></li>
                    </c:if>

                </ul>
            </div>


            <%@ include file="foot.jsp"%>


    <div class="col-md-3" style="position:absolute;top:0px;left: 880px;width: 268px;">
		<div style="background-color: white;width: 250px;height: 440px">
			<iframe name="weather_inc" src="http://i.tianqi.com/index.php?c=code&id=82" width="250" height="440" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
		</div>
	</div>

    </div>

</div>
</div>
</body>
<script language=javascript>
    function  showImg(){
        document.getElementById("wxImg").style.display='block';
    }
    function hideImg(){
        document.getElementById("wxImg").style.display='none';
    }
    function personal(uId) {
        this.location =  "${ctx}/list?id="+uId;
    }

        $.ajax({
            type: "post",
            dataType: "json",
            url: '${ctx}/index',
            success: function (data) {

                var Data=data;
                var content = null;
                var page =null;
                for(var key in Data) {
                    if(key == "page"){
                        page = Data[key];
                    }
                    if(key == "content"){
                        content = Data[key];
                    }
                }

                if (data!=null && data != "" ) {
                    $(content).each(function () {
                        var ll = this.title;
                        // alert(ll);
                        // alert(0);
                        $("#content_col").append("<div class='content-text' ><div class='author clearfix'><div>"
                            +"<a href='#' target='_blank' rel='nofollow' style='height: 35px' onclick=''>"
                            +"<img src='"+this.imgUrl+"'></a></div><a href='' target='_blank' onclick=''>"
                            +"<h2 class='author-h2'>"+this.nickName+"</h2></a></div>"
                            +"<h2>"+this.title+"</h2>"+this.content+
                            "<div style='height: 5px'></div><div class='stats'><span class='stats-vote'><i class='number'>"+this.upvote+"</i> 赞</span>"
                            +"<span class='stats-comments'><span class='dash'> · </span>"
                            +"<a href='#' class='comments' target='_blank' onclick=''>"
                            +"<i class='number'>"+this.commentNum+"</i> 评论 </a></span> </div><div style='height: 5px'></div>"
                            +"<div class='stats-buttons bar clearfix'><a><i class='icon icon-thumbs-o-up icon-2x'></i><span class='number hidden'>"+this.upvote+"</span></a>"
                            +"&nbsp;&nbsp;&nbsp;<a><i class='icon icon-thumbs-o-down icon-2x'></i><span class='number hidden'>"+this.downvote+"</span></a>&nbsp;&nbsp;&nbsp;<a><i class='icon icon-comment-alt icon-2x'></i></a>"
                            +"</div><div class='single-share'><a class='share-wechat' data-type='wechat' title='分享到微信' rel='nofollow' style='margin-left:18px;color: grey'>"
                            +"<i class='icon icon-wechat icon-2x'></i></a><a class='share-qq' data-type='qq' title='分享到QQ' rel='nofollow' style='margin-left:18px;color: grey'>"
                            +"<i class='icon icon-qq icon-2x'></i> </a><a class='share-weibo' data-type='weibo' title='分享到微博' rel='nofollow' style='margin-left:18px;color: grey'>"
                            +"<i class='icon icon-weibo icon-2x'></i></a></div><br/>&nbsp;<div class='single-clear'></div></div>"
                            +"<div style='position: absolute;width:900px;background-color: #EBEBEB;height: 10px;left: 0px'></div>"
                        );

                    });

                    var cnt = "<ul class='pager pager-loose'>";
                    if(page.pageNum <= 1){
                        cnt += "<li><a href='javascript:void(0);'>« 上一页</a></li>";
                    }else {
                        var pNum = page.pageNum-1;
                        cnt += "<li class='previous'><a href='${ctx}/index_list?pageNum="+pNum+"&&id=${user.id}'>« 上一页</a></li>";
                    }
                    for(var i=1;i<=page.pages;i++){
                        if(page.pageNum == i){
                            cnt += "<li class='active'><a href='javascript:void(0);'>"+i+"</a></li>";
                        }else{
                            cnt += "<li ><a href='${ctx}/index_list?pageNum="+i+"&&id=${user.id}'>"+i+"</a></li>";
                        }
                    }

                    if(page.pageNum >= page.pages){
                        cnt += "<li><a href='javascript:void(0);'>下一页 »</a></li>";
                    }else {
                        var pNum = page.pageNum+1;
                        cnt += "<li><a href='${ctx}/index_list?pageNum="+pNum+"&&id=${user.id}'>下一页 »</a></li></ul>";
                    }

                    //分页
                    $("#page-info").append(cnt);

                }
            }
        });


</script>



</html>