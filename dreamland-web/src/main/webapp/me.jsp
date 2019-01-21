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

    <!--头部and尾部 -->
    <link rel="stylesheet" type="text/css" href="../res/layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="../res/css/main.css">
    <script type="text/javascript" src="${ctx}/js/skdslider.min.js"></script>


</head>
<body style="background: #f4f4f4">
<script type="text/javascript" src="${ctx}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${ctx}/css/zui/js/zui.min.js"></script>

<%--头部--%>
<%@ include file="head.jsp"%>
<br/><br/>

    <!-- 个人信息面板 -->
    <div class="my_info" style="background:#ffffff;width: 1100px;height: 700px;margin-left: 430px">
        <div style="width: 900px;height: 900px">
            <div class="geyan" style="position:absolute;width: 640px;height: 500px">
                <h1 style="margin-left: 270px;margin-top: 30px">关于我</h1>
                <h3 style="margin-top: 20px;margin-left: 30px;line-height:33px;text-indent:25px">在我认为：不管学习什么东西，一定要有属于自己的“学习方法”和善于“对事物的总结”。
                    俗话说的好：“方向不对，努力白费！”很多人都是盲目的去学习，导致花了大量的时间，在学习一些没有用处的东西
                    到头来什么都没学会，因此会打击自己的学习欲望，也会让自己处于迷茫当中...一个优秀的传道授业者“不单单传授的是
                    知识，更多传授的是思维和方法”。---授人以鱼不如授人以渔!</h3>
                <h2 style="margin-top: 70px;margin-left: 30px;font-weight:bold">人生格言:</h2>
                <h3 style="line-height:33px;margin-left: 50px;margin-top: 10px">我需要三件东西：爱情友谊和图书。然而这三者之间何其相通！炽热的爱情可以充实图书的内容，图书又是人们最忠实的朋友。</h3>
            </div>

            <img src="images/me.png" style="margin-left: 670px;margin-top: 15px;width: 380px;height: 560px"/>
        </div>


    </div>


    <%--<!--  侧边栏介绍 -->
    <div class="my_info" style="width: 300px;height: 699px;background: #ffffff;margin-left: 430px">


    </div>--%>
<%@ include file="foot.jsp"%>
</body>
</html>