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
    <link href="${app}/css/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${app}/css/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet"/>
    <link href="${app}/css/zui/css/zui.min.css" rel="stylesheet"/>
    <link href="${app}/css/zui/css/zui-theme.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="${app}/css/reply/css/style.css">
    <link rel="stylesheet" href="${app}/css/reply/css/comment.css">
    <link rel="stylesheet" href="${app}/css/index.css">


    <!--头部and尾部 -->
    <link rel="stylesheet" type="text/css" href="../res/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="../res/css/main.css">
    <script type="text/javascript" src="${app}/js/skdslider.min.js"></script>
</head>
<body>

<script type="text/javascript" src="${app}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${app}/css/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${app}/css/zui/js/zui.min.js"></script>
<script type="text/javascript" src="${app}/css/reply/js/jquery.flexText.js"></script>


<%--头部--%>
<%@ include file="head.jsp"%>
<br/><br/>


<div class="container">
    <div id="content" class="row-fluid">
        <!-- 右侧导航栏 -->
        <div class="col-md-2" style="width:100px;height:610px;background-color:#fdfeff;right: 10px;">
            <div style="text-align: center;margin-top: 15px">
                <form method="post" action="${app}/index_list" id="indexCategoryForm"><li style="margin-top: 15px"><button type="submit" onclick="categoryForm();"  name="category" value="世界杯" style="border:none;background:none;cursor:pointer;outline:none;">世界杯</button></li></form>
                <form method="post" action="${app}/index_list" id="indexCategoryForm"><li style="margin-top: 15px"><button type="submit" onclick="categoryForm();"  name="category" value="欧洲杯" style="border:none;background:none;cursor:pointer;outline:none;">欧洲杯</button></li></form>
                <form method="post" action="${app}/index_list" id="indexCategoryForm"><li style="margin-top: 15px"><button type="submit" onclick="categoryForm();"  name="category" value="亚冠联赛" style="border:none;background:none;cursor:pointer;outline:none;">亚冠联赛</button></li></form>
                <form method="post" action="${app}/index_list" id="indexCategoryForm"><li style="margin-top: 15px"><button type="submit" onclick="categoryForm();"  name="category" value="欧冠联赛" style="border:none;background:none;cursor:pointer;outline:none;">欧冠联赛</button></li></form>
                <form method="post" action="${app}/index_list" id="indexCategoryForm"><li style="margin-top: 15px"><button type="submit" onclick="categoryForm();"  name="category" value="中超联赛" style="border:none;background:none;cursor:pointer;outline:none;">中超联赛</button></li></form>
                <form method="post" action="${app}/index_list" id="indexCategoryForm"><li style="margin-top: 15px"><button type="submit" onclick="categoryForm();"  name="category" value="西甲联赛" style="border:none;background:none;cursor:pointer;outline:none;">西甲联赛</button></li></form>
                <form method="post" action="${app}/index_list" id="indexCategoryForm"><li style="margin-top: 15px"><button type="submit" onclick="categoryForm();"  name="category" value="德甲联赛" style="border:none;background:none;cursor:pointer;outline:none;">德甲联赛</button></li></form>
                <form method="post" action="${app}/index_list" id="indexCategoryForm"><li style="margin-top: 15px"><button type="submit" onclick="categoryForm();"  name="category" value="英超联赛" style="border:none;background:none;cursor:pointer;outline:none;">英超联赛</button></li></form>
                <form method="post" action="${app}/index_list" id="indexCategoryForm"><li style="margin-top: 15px"><button type="submit" onclick="categoryForm();"  name="category" value="意甲联赛" style="border:none;background:none;cursor:pointer;outline:none;">意甲联赛</button></li></form>
                <form method="post" action="${app}/index_list" id="indexCategoryForm"><li style="margin-top: 15px"><button type="submit" onclick="categoryForm();"  name="category" value="法甲联赛" style="border:none;background:none;cursor:pointer;outline:none;">法甲联赛</button></li></form>
                <form method="post" action="${app}/index_list" id="indexCategoryForm"><li style="margin-top: 15px"><button type="submit" onclick="categoryForm();"  name="category" value="足球空间" style="border:none;background:none;cursor:pointer;outline:none;">足球空间</button></li></form>
                <form method="post" action="${app}/index_list" id="indexCategoryForm"><li style="margin-top: 15px"><button type="submit" onclick="categoryForm();"  name="category" value="球迷世界" style="border:none;background:none;cursor:pointer;outline:none;">球迷世界</button></li></form>
                <form method="post" action="${app}/index_list" id="indexCategoryForm"><li style="margin-top: 15px"><button type="submit" onclick="categoryForm();"  name="category" value="足球新闻" style="border:none;background:none;cursor:pointer;outline:none;">足球新闻</button></li></form>
                <form method="post" action="${app}/index_list" id="indexCategoryForm"><li style="margin-top: 15px"><button type="submit" onclick="categoryForm();"  name="category" value="足球人生" style="border:none;background:none;cursor:pointer;outline:none;">足球人生</button></li></form>
                <form method="post" action="${app}/index_list" id="indexCategoryForm"><li style="margin-top: 15px"><button type="submit" onclick="categoryForm();"  name="category" value="其他" style="border:none;background:none;cursor:pointer;outline:none;">其他</button></li></form>
                    <%--<c:forEach items="${allCategory}" var="category" varStatus="sta">
                        <form method="post" action="${app}/index_list" id="indexCategoryForm">
                            <li style="margin-top: 15px"><button type="submit" onclick="categoryForm();" id="category" name="category" value="${category.category}" style="border:none;background:none;cursor:pointer;outline:none;">${category.category}</button></li>
                        </form>
                    </c:forEach>--%>
            </div>
        </div>&nbsp;


        <!-- 中间内容 -->
        <div class="col-md-9"  style="background-color: #ffffff;margin-right:12px">
            <div class="picture" style="height:350px;text-align:center">
                <%--<img src="images/zhanshi.png">--%>
                    <div id="myNiceCarousel" class="carousel slide" data-ride="carousel">
                        <!-- 圆点指示器 -->
                        <ol class="carousel-indicators">
                            <li data-target="#myNiceCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myNiceCarousel" data-slide-to="1"></li>
                            <li data-target="#myNiceCarousel" data-slide-to="2"></li>
                            <%--<li data-target="#myNiceCarousel" data-slide-to="3"></li>--%>
                            <%--<li data-target="#myNiceCarousel" data-slide-to="4"></li>--%>
                        </ol>

                        <!-- 轮播项目 -->
                        <div class="carousel-inner">
                            <div class="item active">
                                <a href="http://localhost:8080/watch?cid=71"><img alt="First slide" src="/images/algl.jpg" style="width:835px ;height:336px "></a>
                                <div class="carousel-caption">
                                    <h3>传尤文或与阿莱格里续约一年，否则小因扎吉可能接手</h3>
                                    <p></p>
                                </div>
                            </div>
                            <div class="item">
                                <a href="http://localhost:8080/watch?cid=70"><img alt="Second slide" src="/images/ywts.jpg" style="width:835px ;height:336px "></a>
                                <div class="carousel-caption">
                                    <h3>迪马济奥：国米尤文有意桑切斯，但高工资导致谈判停滞</h3>
                                    <p></p>
                                </div>
                            </div>
                            <div class="item">
                                <a href="http://localhost:8080/watch?cid=72"><img alt="Third slide" src="images/aze.jpg" style="width:835px ;height:336px "></a>
                                <div class="carousel-caption">
                                    <h3>天空体育总结：2018-19赛季英超十大趋势</h3>
                                    <p></p>
                                </div>
                            </div>

                        </div>

                        <!-- 项目切换按钮 -->
                        <a class="left carousel-control" href="#myNiceCarousel" data-slide="prev">
                            <span class="icon icon-chevron-left"></span>
                        </a>
                        <a class="right carousel-control" href="#myNiceCarousel" data-slide="next">
                            <span class="icon icon-chevron-right"></span>
                        </a>
                    </div>
            </div>



            <div id="content_col" class="content-main">
                <c:forEach var="cont" items="${page.result}" varStatus="i">
                    <!-- 正文开始 -->
                    <div class="content-text" >
                        <div class="author clearfix">
                            <div>
                                <a href="#" target="_blank" rel="nofollow" style="height: 35px">
                                     <img src="${cont.imgUrl}">
                                </a>
                            </div>
                            <div class="author-h2">
                                <div style="float: left;font-size: 15px;color: #9b8878">
                                        ${cont.nickName}
                                </div>
                                <div style="float: left;margin-left: 10px;color: grey;margin-top: 2px;font-size: 12px">
                                        ${cont.formatDate}
                                </div>
                                <div style="float: left;margin-left: 10px;color: grey;margin-top: 2px;font-size: 12px">
                                        ${cont.category}
                                </div>
                            </div>
                        </div>
                        <br>
                        <style>
                            a.hover-red:hover{color:red;}
                        </style>
                        <a class='hover-red' href="${app}/watch?cid=${cont.id}">
                        <h2 style="font-weight:bold">${cont.title}</h2></a>
                        <br>
                            <div style=" font-size:16px;height:20px;overflow:hidden;">${cont.content}</div>
                        <div style="height: 12px"></div>
                        <div class="stats" >
                            <!-- 点赞数、评论数 -->
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
                        <%--<div class="single-share">--%>
                            <%--<a class="share-wechat" data-type="wechat" title="分享到微信" rel="nofollow" style="margin-left:18px;color: grey;cursor: pointer; text-decoration:none;">--%>
                                <%--<i class="icon icon-wechat icon-2x"></i>--%>
                            <%--</a>--%>
                            <%--<a class="share-qq" data-type="qq" title="分享到QQ" rel="nofollow" style="margin-left:18px;color: grey;cursor: pointer; text-decoration:none;">--%>
                                <%--<i class="icon icon-qq icon-2x"></i>--%>
                            <%--</a>--%>
                            <%--<a  class="share-weibo" data-type="weibo" title="分享到微博" rel="nofollow" style="margin-left:18px;color: grey;cursor: pointer; text-decoration:none;">--%>
                                <%--<i class="icon icon-weibo icon-2x"></i>--%>
                            <%--</a>--%>
                        <%--</div>--%>
                        <br/>
                        &nbsp;
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

                        <div class="single-clear">

                        </div>
                    </div>
                    <!-- 正文结束 -->
                    <div style="position: absolute;width:855px;background-color: #EBEBEB;height: 10px;left: 0px">
                    </div>
                </c:forEach>
            </div>



            <!--分页信息..-->
            <div id="page-info" style="position: absolute;width:855px;background-color: #EBEBEB;height: 80px;left: 0px;">
                <ul class="pager pager-loose">
                    <c:if test="${page.pageNum <= 1}">
                        <li><a href="javascript:void(0);">« 上一页</a></li>
                    </c:if>
                    <c:if test="${page.pageNum > 1}">
                        <li class="previous"><a href="${app}/index_list?pageNum=${page.pageNum-1}&&id=${user.id}">« 上一页</a></li>
                    </c:if>
                    <c:forEach begin="${page.startPage}" end="${page.endPage}" var="pn">
                        <c:if test="${page.pageNum==pn}">
                            <li class="active"><a href="javascript:void(0);">${pn}</a></li>
                        </c:if>
                        <c:if test="${page.pageNum!=pn}">
                            <li ><a href="${app}/index_list?pageNum=${pn}&&id=${user.id}">${pn}</a></li>
                        </c:if>
                    </c:forEach>

                    <c:if test="${page.pageNum>=page.pages}">
                        <li><a href="javascript:void(0);">下一页 »</a></li>
                    </c:if>
                    <c:if test="${page.pageNum<page.pages}">
                        <li><a href="${app}/index_list?pageNum=${page.pageNum+1}&&id=${user.id}">下一页 »</a></li>
                    </c:if>

                </ul>
            </div>


            //尾部


    <div class="col-md-3" style="position:absolute;top:0px;left: 855px;width: 268px;">
		<div style="background-color: white;width: 250px;height: 440px">
			<iframe name="weather_inc" src="http://i.tianqi.com/index.php?c=code&id=82" width="250" height="440" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
		</div>
        <div style="background-color: white;width: 250px;height: 440px">
            <img src="images/csdn.jpg"></br>
            <h3 style="padding-top: 20px;margin-left: 18px">
                <span class="line" style="display: block;float: left;width: 3px;height: 15px;background: #cf2730;overflow: hidden;margin: 0 5px 0 0;"></span>
                <span>友情推荐</span>
            </h3>
            <li style="margin-top: 8px"><div class="content1"><a href="https://blog.csdn.net/Androidlushangderen/article/details/85058701" target="_blank">1、Flink流处理过程的部分原理分析</a></div></li>
            <li style="margin-top: 8px"><div class="content1"><a href="https://blog.csdn.net/Androidlushangderen/article/details/85058701" target="_blank">2、iOS使用动画连贯过渡界面转换</a></div></li>
            <li style="margin-top: 8px"><div class="content1"><a href="https://blog.csdn.net/mydo/article/details/85200002" target="_blank">3、Unity屏幕雪花另类实现方式</a></div></li>
            <li style="margin-top: 8px"><div class="content1"><a href="https://blog.csdn.net/Androidlushangderen/article/details/85058701" target="_blank">4、机器学习：信用风险评估评分卡建模方法及原理</a></div></li>
            <li style="margin-top: 8px"><div class="content1"><a href="https://blog.csdn.net/Androidlushangderen/article/details/85058701" target="_blank">5、知识图谱—事件抽取及推理(上)</a></div></li>
            <li style="margin-top: 8px"><div class="content1"><a href="https://blog.csdn.net/Androidlushangderen/article/details/85058701" target="_blank">6、使用deepfashion实现自己的第一个分类网络</a></div></li>
            <li style="margin-top: 8px"><div class="content1"><a href="https://blog.csdn.net/Androidlushangderen/article/details/85058701" target="_blank">7、python实现并绘制 sigmoid函数，tanh函数，ReLU函数，PReLU函数</a></div></li>
            <li style="margin-top: 8px"><div class="content1"><a href="https://blog.csdn.net/Androidlushangderen/article/details/85058701" target="_blank">8、非 Java、C、Python，使用的第一门计算机语言是它！（下）</a></div></li>
            <li style="margin-top: 8px"><div class="content1"><a href="https://blog.csdn.net/Androidlushangderen/article/details/85058701" target="_blank">9、被经验蒙蔽——wireshark抓包问题</a></div></li>

        </div>
        <div style="background-color: white;width: 250px;height: 440px">
            <img src="images/csdn.jpg"></br>
            <h3 style="padding-top: 20px;margin-left: 18px">
                <span class="line" style="display: block;float: left;width: 3px;height: 15px;background: #cf2730;overflow: hidden;margin: 0 5px 0 0;"></span>
                <span>广告位招租</span>
                <img src="images/hb.png" style="margin-top: 8px">
            </h3>
        </div>
	</div>

    </div>

</div>
</div>

<%@ include file="foot.jsp"%>
</body>
<script>
    function  showImg(){
        document.getElementById("wxImg").style.display='block';
    }
    function hideImg(){
        document.getElementById("wxImg").style.display='none';
    }
    function personal(uId) {
        this.location =  "${app}/list?id="+uId;
    }

    /**
     * 日期函数
     * @param strTime
     * @returns {string}
     * @constructor
     */
    function FormatDate (strTime) {
        var date = new Date(strTime);
        var h=date.getHours();       //获取当前小时数(0-23)
        var m=date.getMinutes();     //获取当前分钟数(0-59)
        if(m<10) m = '0' + m;
        var s=date.getSeconds();
        if(s<10) s = '0' + s;
        return date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate()+" "+h+':'+m+":"+s;
    }
    //点赞或踩
    function upvote_click(id,cont) {

        $.ajax({
            type:'post',
            url:'/upvote',
            data: {"id":id,"uid":'${user.id}',"upvote":cont},
            dataType:'json',
            success:function(data){
                var up =  data["data"];
                /*alert(up);*/
                if(up == "success"){
                    if (cont == -1){
                        var down = document.getElementById("down_"+id);
                        var num = down.innerHTML;
                        var value = parseInt(num) + cont;
                        down.innerHTML = value;
                    } else {
                        var num = document.getElementById(id).innerHTML;
                        var value = parseInt(num) + cont;
                        document.getElementById(id).innerHTML = value;
                        document.getElementById("up_"+id).innerHTML = value;
                    }
                }else if(up == "done"){
                    alert("已点赞！")

                }else if(up == "down"){
                    alert("已踩！")
                } else {
                    window.location.href = "/login.jsp";
                }
            }
        });
    }

    //点击评论或者回复图标
    function reply(id,uid) {
        $("div").remove("#comment_reply_"+id+" .comment-show");
        $("div").remove("#comment_reply_"+id+" .comment-show-con");
        if(showdiv_display = document.getElementById('comment_reply_'+id).style.display=='none'){//如果show是隐藏的

            document.getElementById('comment_reply_'+id).style.display='block';//show的display属性设置为block（显示）
            $.ajax({
                type:'post',
                url:'/reply',
                data: {"content_id":id},
                dataType:'json',
                success:function(data){
                    var list =  data["list"];
                    //alert(list);
                    var okHtml;
                    if(list!=null && list!=""){
                        $(list).each(function () {
                            var chtml = "<div class='comment-show'>"+
                                "<div class='comment-show-con clearfix'>"+
                                "<div class='comment-show-con-img pull-left'><img src='"+this.user.imgUrl+"' alt=''></div>"+
                                "<div class='comment-show-con-list pull-left clearfix'>"+
                                "<div class='pl-text clearfix'>"+
                                "<a  class='comment-size-name'>"+this.user.nickName+" :</a>"+
                                "<span class='my-pl-con'>&nbsp;"+this.comContent+"</span>"+
                                "</div> <div class='date-dz'><span class='date-dz-left pull-left comment-time'>"+FormatDate(this.commTime)+"</span>"+
                                "<div class='date-dz-right pull-right comment-pl-block'>"+
                                "<a onclick='deleteComment("+id+","+uid+","+this.id+",null)' id='comment_dl_"+this.id+"' style='cursor:pointer' class='removeBlock'>删除</a>"+
                                "<a style='cursor:pointer' onclick='comment_hf("+id+","+this.id+","+null+","+this.user.id+","+uid+")' id='comment_hf_"+this.id+"' class='date-dz-pl pl-hf hf-con-block pull-left'>回复</a>"+
                                "<span class='pull-left date-dz-line'>|</span>"+
                                "<a onclick='reply_up("+this.id+")' style='cursor:pointer' class='date-dz-z pull-left' id='change_color_"+this.id+"'><i class='date-dz-z-click-red'></i>赞 (<i class='z-num' id='comment_upvote_"+this.id+"'>"+this.upvote+"</i>)</a>"+
                                "</div> </div> <div class='hf-list-con' id='hf-list-con-"+this.id+"'>";


                            var ehtml =   "</div> </div> </div></div>";
                            var parentComm_id = this.id;

                            okHtml = chtml;
                            //alert(this.children)
                            if(this.children != null && this.children != ''){
                                var commentList = this.comList;
                                $(commentList).each(function () {
                                    // alert(this.id);
                                    var oHtml = "<div class='all-pl-con'><div class='pl-text hfpl-text clearfix'>"+
                                        "<a class='comment-size-name'>"+this.user.nickName+"<a class='atName'>@"+this.byUser.nickName+" :</a> </a>"+
                                        "<span class='my-pl-con'>"+this.comContent+"</span>"+
                                        "</div><div class='date-dz'> <span class='date-dz-left pull-left comment-time'>"+FormatDate(this.commTime)+"</span>"+
                                        "<div class='date-dz-right pull-right comment-pl-block'>"+
                                        "<a style='cursor:pointer' onclick='deleteComment("+id+","+uid+","+this.id+","+parentComm_id+")' id='comment_dl_"+this.id+"' class='removeBlock'>删除</a>"+
                                        "<a onclick='comment_hf("+id+","+this.id+","+parentComm_id+","+this.user.id+","+uid+")' id='comment_hf_"+this.id+"' style='cursor:pointer' class='date-dz-pl pl-hf hf-con-block pull-left'>回复</a> <span class='pull-left date-dz-line'>|</span>"+
                                        "<a onclick='reply_up("+this.id+")' id='change_color_"+this.id+"' style='cursor:pointer' class='date-dz-z pull-left'><i class='date-dz-z-click-red'></i>赞 (<i class='z-num' id='comment_upvote_"+this.id+"'>"+this.upvote+"</i>)</a>"+
                                        "</div></div> </div>";

                                    okHtml = okHtml + oHtml;
                                });


                            }

                            okHtml = okHtml+ehtml;
                            $("#comment-show-" + id).append(okHtml);

                        });
                    }

                }
            });


        }else{//如果show是显示的

            document.getElementById('comment_reply_'+id).style.display='none';//show的display属性设置为none（隐藏）

        }
    }

    //限制字数
    function keyUP(t){
        var len = $(t).val().length;
        if(len > 139){
            $(t).val($(t).val().substring(0,140));
        }
    }

    //点击评论按钮
    function _comment(content_id,uid,cuid) {
        var myDate = new Date();
        //获取当前年
        var year=myDate.getFullYear();
        //获取当前月
        var month=myDate.getMonth()+1;
        //获取当前日
        var date=myDate.getDate();
        var h=myDate.getHours();       //获取当前小时数(0-23)
        var m=myDate.getMinutes();     //获取当前分钟数(0-59)
        if(m<10) m = '0' + m;
        var s=myDate.getSeconds();
        if(s<10) s = '0' + s;
        var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
        //获取输入内容
        var oSize = $("#comment_input_"+content_id).val();
        console.log(oSize);
        //动态创建评论模块

        if(oSize.replace(/(^\s*)|(\s*$)/g, "") != ''){


            $.ajax({
                type:'post',
                url:'/comment',
                data: {"content_id":content_id,"uid":uid,"oSize":oSize,"comment_time":now},
                dataType:'json',
                success:function(data){
                    var comm_data =  data["data"];
                    //alert(comm_data);
                    if(comm_data=="fail"){
                        window.location.href = "/login.jsp";
                    }else {
                        var id = comm_data.id;
                        //alert(id)
                        oHtml = '<div class="comment-show-con clearfix"><div class="comment-show-con-img pull-left"><img src="${user.imgUrl}" alt=""></div> <div class="comment-show-con-list pull-left clearfix"><div class="pl-text clearfix"> <a  class="comment-size-name">${user.nickName} : </a> <span class="my-pl-con">&nbsp;'+ oSize +'</span> </div> <div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"><a style="cursor:pointer"  onclick="deleteComment('+content_id+','+cuid+','+id+','+null+')" id="comment_dl_'+id+'"  class="removeBlock">删除</a> <a style="cursor:pointer" onclick="comment_hf('+content_id+','+id+','+null+','+comm_data.user.id+','+cuid+')" id="comment_hf_'+id+'" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a onclick="reply_up('+id+')" id="change_color_'+id+'" style="cursor:pointer"  class="date-dz-z pull-left" ><i class="date-dz-z-click-red"></i>赞 (<i class="z-num" id="comment_upvote_'+id+'">0</i>)</a> </div> </div><div class="hf-list-con"></div></div> </div>';
                        $("#comment_"+content_id).parents('.reviewArea ').siblings('.comment-show-first').prepend(oHtml);
                        $("#comment_"+content_id).siblings('.flex-text-wrap').find('.comment-input').prop('value','').siblings('pre').find('span').text('');

                        $("#comment_input_"+content_id).val('');

                        var num = document.getElementById("comment_num_"+content_id).innerHTML;
                        document.getElementById("comment_num_"+content_id).innerHTML = (parseInt(num) + 1)+"";
                    }
                }
            });
        }

    }

    //删除评论块
    function deleteComment(con_id,uid,id,fid) {
        // alert(uid)
        if('${user.id}'==uid){

            if (!confirm("确认要删除？")) {
                window.event.returnValue = false;
            }else{

                //发送ajax请求
                $.ajax({
                    type:'post',
                    url:'/deleteComment',
                    data: {"id":id,"uid":uid,"con_id":con_id,"fid":fid},
                    dataType:'json',
                    success:function(data){
                        var comm_data =  data["data"];
                        //alert(comm_data);
                        if(comm_data=="fail"){
                            window.location.href = "/login.jsp";
                        }else if(comm_data=="no-access"){
                            //alert("没有权限！");
                        }else {
                            //alert(comm_data)
                            var oThis = $("#comment_dl_"+id);
                            var oT = oThis.parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con');
                            if(oT.siblings('.all-pl-con').length >= 1){
                                oT.remove();
                            }else {
                                oThis.parents('.date-dz-right').parents('.date-dz').parents('.all-pl-con').parents('.hf-list-con').css('display','none')
                                oT.remove();
                            }
                            oThis.parents('.date-dz-right').parents('.date-dz').parents('.comment-show-con-list').parents('.comment-show-con').remove();


                            //评论数comment_num_con_id
                            document.getElementById("comment_num_"+con_id).innerHTML = parseInt(comm_data)+"";

                        }
                    }
                });
            }
        }
    }

    //一级评论  点击回复创建回复块
    function comment_hf(content_id,comment_id,fid,by_id,cuid) {
        // alert(cuid)
        //获取回复人的名字
        var oThis = $("#comment_hf_"+comment_id);
        var fhName = oThis.parents('.date-dz-right').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
        //回复@
        var fhN = '回复@' + fhName;
        var fhHtml = '<div class="hf-con pull-left"> <textarea id="plcaceholder_'+comment_id+'"  class="content comment-input " placeholder="'+fhN+'" onkeyup="keyUP(this)" style="padding-top: 10px;padding-bottom: 10px;">' +
            '</textarea> <a id="comment_pl_'+comment_id+'" onclick="comment_pl('+content_id+','+comment_id+','+fid+','+by_id+','+cuid+')" class="hf-pl" style="color: white;cursor:pointer">评论</a></div>';
        //显示回复
        if (oThis.is('.hf-con-block')) {
            oThis.parents('.date-dz-right').parents('.date-dz').append(fhHtml);
            oThis.removeClass('hf-con-block');
            $('.content').flexText();
            oThis.parents('.date-dz-right').siblings('.hf-con').find('.pre').css('padding', '6px 15px');

            //input框自动聚焦
            oThis.parents('.date-dz-right').siblings('.hf-con').find('.hf-input').val('').focus().val(fhN);
        } else {
            oThis.addClass('hf-con-block');
            oThis.parents('.date-dz-right').siblings('.hf-con').remove();
        }
    }

    //点赞
    function reply_up(id) {
        var num = document.getElementById("comment_upvote_"+id).innerHTML;
        if($("#change_color_"+id).is('.date-dz-z-click')){
            num--;
            $("#change_color_"+id).removeClass('date-dz-z-click red');
            $("#change_color_"+id).find('.z-num').html(num);
            $("#change_color_"+id).find('.date-dz-z-click-red').removeClass('red');

        }else {
            num++;
            $("#change_color_"+id).addClass('date-dz-z-click');
            $("#change_color_"+id).find('.z-num').html(num);
            $("#change_color_"+id).find('.date-dz-z-click-red').addClass('red');
        }

        $.ajax({
            type:'post',
            url:'/comment',
            data: {"id":id,"upvote":num},
            dataType:'json',
            success:function(data){
                var comm_data =  data["data"];
                if(comm_data=="fail"){
                    window.location.href = "/login.jsp";
                }
            }
        });
    }

    //点击一级评论块的评论按钮
    function comment_pl(content_id,comment_id,fid,by_id,cuid) {
        if(fid==null){
            fid = comment_id
        }
        var oThis = $("#comment_pl_"+comment_id);
        var myDate = new Date();
        //获取当前年
        var year=myDate.getFullYear();
        //获取当前月
        var month=myDate.getMonth()+1;
        //获取当前日
        var date=myDate.getDate();
        var h=myDate.getHours();       //获取当前小时数(0-23)
        var m=myDate.getMinutes();     //获取当前分钟数(0-59)
        if(m<10) m = '0' + m;
        var s=myDate.getSeconds();
        if(s<10) s = '0' + s;
        var now=year+'-'+month+"-"+date+" "+h+':'+m+":"+s;
        //获取输入内容
        var oHfVal = oThis.siblings('.flex-text-wrap').find('.comment-input').val();
        console.log(oHfVal)
        var oHfName = oThis.parents('.hf-con').parents('.date-dz').siblings('.pl-text').find('.comment-size-name').html();
        //alert(oHfName)
        var oAllVal = '回复@'+oHfName;

        if(oHfVal.replace(/^ +| +$/g,'') == '' || oHfVal == oAllVal){

        }else {
            $.ajax({
                type:'post',
                url:'/comment_child',
                data: {"content_id":content_id,"uid":'${user.id}',"oSize":oHfVal,"comment_time":now,"by_id":by_id,"id":fid},
                dataType:'json',
                success:function(data){
                    var comm_data =  data["data"];
                    //alert(comm_data);
                    if(comm_data=="fail"){
                        window.location.href = "/login.jsp";
                    }else {
                        var id = comm_data.id;
                        //alert(id)
                        var oAt = '回复<a class="atName">@'+oHfName+'</a>  '+oHfVal;
                        var oHtml = '<div class="all-pl-con"><div class="pl-text hfpl-text clearfix"><a class="comment-size-name">${user.nickName} : </a><span class="my-pl-con">'+oAt+'</span></div><div class="date-dz"> <span class="date-dz-left pull-left comment-time">'+now+'</span> <div class="date-dz-right pull-right comment-pl-block"> <a style="cursor:pointer" onclick="deleteComment('+content_id+','+cuid+','+id+','+fid+')" id="comment_dl_'+id+'" class="removeBlock">删除</a> <a onclick="comment_hf('+content_id+','+id+','+fid+','+comm_data.user.id+','+cuid+')" id="comment_hf_'+id+'" style="cursor:pointer" class="date-dz-pl pl-hf hf-con-block pull-left">回复</a> <span class="pull-left date-dz-line">|</span> <a onclick="reply_up('+id+')" id="change_color_'+id+'" style="cursor:pointer" class="date-dz-z pull-left"><i class="date-dz-z-click-red"></i>赞 (<i class="z-num" id="comment_upvote_'+id+'">0</i>)</a> </div> </div></div>';
                        $("#comment_pl_"+comment_id).parents('.hf-con').parents('.comment-show-con-list').find('.hf-list-con').css('display','block').prepend(oHtml) && oThis.parents('.hf-con').siblings('.date-dz-right').find('.pl-hf').addClass('hf-con-block') && oThis.parents('.hf-con').remove();

                        var num = document.getElementById("comment_num_"+content_id).innerHTML;
                        document.getElementById("comment_num_"+content_id).innerHTML = (parseInt(num) + 1)+"";
                    }
                }
            });
        }
    }

    //搜索
    function searchForm(){
        var keyword =  $("#keyword").val();
        if(keyword!=null && keyword.trim()!=""){
            $("#indexSearchForm").submit();
        }
    }

    //文章分类
    function categoryForm(){
        var category =  $("#category").val();
        if(category!=null && category.trim()!=""){
            $("#indexCategoryForm").submit();
        }
    }

</script>
</html>