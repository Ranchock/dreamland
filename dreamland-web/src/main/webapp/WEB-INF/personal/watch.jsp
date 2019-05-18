<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="app" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>我的文章</title>
    <link href="${app}/css/personal/watch.css" rel="stylesheet"/>

    <link href="${app}/css/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="${app}/css/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet"/>

    <link href="${app}/css/zui/css/zui.min.css" rel="stylesheet"/>
    <link href="${app}/css/zui/css/zui-theme.min.css" rel="stylesheet"/>
    <link href="${app}/css/personal/personal.css" rel="stylesheet"/>

    <!--头部and尾部 -->
    <link rel="stylesheet" type="text/css" href="../res/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="../res/css/main.css">

    <link rel="stylesheet" href="${app}/css/reply/css/style.css">
    <link rel="stylesheet" href="${app}/css/reply/css/comment.css">
    <script type="text/javascript" src="${app}/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${app}/css/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${app}/css/zui/js/zui.min.js"></script>
    <script type="text/javascript" src="${app}/css/reply/js/jquery.flexText.js"></script>

</head>
<body>
<%--头部--%>
<%@ include file="head1.jsp"%>
<br/>
<div class="container" style="margin-left: 9%">

    <div id="content" class="row-fluid">

        <!--个人资料页面-->
        <%--<div class="designer-card card-media" style="width: 260px" >--%>
            <%--<input type="hidden" name="creator" value="13149346">--%>
            <%--<div class="avatar-container-80 center" >--%>
                <%--<a href="#" title="${user.nickName}" class="avatar" target="_blank">--%>
                    <%--<img src="${user.imgUrl}" width="80" height="80" alt="">--%>
                <%--</a>--%>

            <%--</div>--%>

            <%--<br/>--%>
            <%--<!--个人资料页面-->--%>
            <%--<div class="author-info">--%>
                <%--<p class="author-info-title">--%>
                    <%--<a href="#" title="${user.nickName}"--%>
                       <%--class="title-content" target="_blank">${user.nickName}--%>
                    <%--</a>--%>
                <%--</p>--%>
                <%--<div class="position-info">--%>
                    <%--<span>成都&nbsp;|&nbsp;大数据工程师</span>--%>
                <%--</div>--%>
                <%--<div class="btn-area">--%>
                    <%--<div class="js-project-focus-btn" style="margin-left: 20px">--%>

                        <%--<input type="button" title="添加关注" class="btn-default-main btn-current attention notfollow" value="关注"--%>
                               <%--z-st="follow">--%>

                    <%--</div>--%>
                    <%--<div style="margin-left: 30px;float: left">--%>
                        <%--<input type="button" title="发私信" class="btn-default-secondary btn-current private-letter" value="私信"--%>
                               <%--onclick="" z-st="privateMsg">--%>
                    <%--</div>--%>
                <%--</div>--%>

                <%--<div>--%>
                    <%--<div style="width: 35px;height: 18px;background-color: #4cae4c;float: left;line-height: 15px;margin-top: 30px;margin-left: 42px">--%>
                        <%--<span style="color: white;font-size: 12px">等级</span>--%>
                    <%--</div>--%>
                    <%--<div style="width: 18px;height: 18px;background-color: #2b542c;float: left;line-height: 15px;margin-top: 30px;">--%>
                        <%--<span style="color: white;font-size: 12px">1</span>--%>
                    <%--</div>--%>


                    <%--<div style="width: 35px;height: 18px;background-color: #4cae4c;float: left;line-height: 15px;margin-top: 30px;margin-left: 20px">--%>
                        <%--<span style="color: white;font-size: 12px">文章</span>--%>
                    <%--</div>--%>
                    <%--<div style="width: 18px;height: 18px;background-color: #2b542c;float: left;line-height: 15px;margin-top: 30px;">--%>
                        <%--<span style="color: white;font-size: 12px">${page.total}</span>--%>
                    <%--</div>--%>

                    <%--<div style="width: 35px;height: 18px;background-color: #4cae4c;float: left;line-height: 15px;margin-top: 30px;margin-left: 20px">--%>
                        <%--<span style="color: white;font-size: 12px">下载</span>--%>
                    <%--</div>--%>
                    <%--<div style="width: 18px;height: 18px;background-color: #2b542c;float: left;line-height: 15px;margin-top: 30px;">--%>
                        <%--<span style="color: white;font-size: 12px">2</span>--%>
                    <%--</div>--%>
                <%--</div>--%>

                <%--<div style="float: left;margin-top: 40px; margin-left: 130px;">--%>
                    <%--&lt;%&ndash;<a href="${app}/profile"><i class="icon icon-edit"></i><span style="margin-left: 10px">修改个人资料</span></a>&ndash;%&gt;--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>

        <c:if test="${cont.uId == user.id}">
        <div class="update-dream">
            <a href="${app}/writedream?cid=${cont.id}"><span style="color: #9370db;font-size: 14px">编辑</span> </a>
        </div>
        </c:if>




        <div class="col-md-9"  style="background-color: #d8d8d8;">



            <div id="content_col" class="content-main">
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
                                <textarea id="comment_input_${cont.id}"  class="content comment-input" placeholder="输入内容&hellip;" onkeyup="keyUP(this)"></textarea>
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
            </div>
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
<script language=javascript>
    function personal(uId) {
        this.location =  "${app}/list?id="+uId;
    }
</script>



</html>