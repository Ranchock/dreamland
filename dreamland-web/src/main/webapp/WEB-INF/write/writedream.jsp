<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="ctx" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>写文章</title>
    <link href="${ctx}/css/write/writedream.css" rel="stylesheet"/>

    <link href="${ctx}/css/zui/css/zui.min.css" rel="stylesheet"/>
    <link href="${ctx}/css/zui/css/zui-theme.min.css" rel="stylesheet"/>
    <script type="text/javascript" src="${ctx}/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${ctx}/css/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${ctx}/css/zui/js/zui.min.js"></script>
    <script src="${ctx}/css/zui/lib/kindeditor/kindeditor.min.js"></script>
</head>
<body>
<%--头部--%>
<%@ include file="head.jsp"%>

<!--中间内容-->
<form id="write_form" name="w_form" role="w_form" class="writedream-form" action="doWritedream?cid=${cont.id}" method="post">
<div class="writedream-context" style="margin-left: 360px;">
    <div style="margin-top: 20px;margin-left: 20px;position: absolute;">
        <div class="dropdown dropdown-hover">
            <button class="btn" type="button" data-toggle="dropdown" id="dream-diff" style="background-color:#EBEBEB"><span id="fen" >
            <c:if test="${cont.category != null}">
                ${cont.category}
            </c:if>
                <c:if test="${cont.category == '' || cont.category == null}">
                    博客分类
                </c:if>

           </span> <span class="caret"></span></button>
            <input id="hidden_cat" hidden="hidden" name="category" value="${cont.category}"/>
            <ul class="dropdown-menu" id="dreamland-category">
                <li><a>意甲联赛</a></li>
                <li><a>西甲联赛</a></li>
                <li><a>德甲联赛</a></li>
                <li><a>法甲联赛</a></li>
                <li><a>英超联赛</a></li>
                <li><a>尤文图斯</a></li>
                <li><a>曼联</a></li>
            </ul>
        </div>
    </div>

    <div style="float: left;margin-top: 20px;margin-left: 110px;background-color: #EBEBEB">
        <input type="text" id="txtTitle" name="txtT_itle" value="${cont.title}" class="input-file-title" maxlength="100" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;输入文章标题"  style="height: 33px;width: 1080px;background-color:#EBEBEB;border: 0px" >
    </div>
    <!--富文本编辑器-->
    <div style="margin-top:20px ;float: left;margin-left: 20px">
        <textarea id="content" name="content" class="form-control kindeditor" style="height:600px;width: 1170px">${cont.content}</textarea>

    </div>

    <br/>
    <div class="switch" style="float: left;margin-top: 670px;margin-left: 20px;position: absolute">
        <input type="checkbox" name="private_dream" id="private_dream" value="off">
        <label>私密文章</label>
        <span style="color: red">${error}</span>
    </div>
    <br/>
    <div style="float: left;margin-top: 700px;margin-left:20px;position: absolute">
        <button class="btn btn-primary"  type="button" id="sub_dream">发表文章</button>
        <button class="btn btn-primary" id="go_back" type="button" >返回</button>
    </div>
</div>
</form>
</body>
<script>

    //li标签的点击事件
    $("#dreamland-category li").click(function(){//jquery的click事件
        var val = $(this).text();
        $("#fen").html(val);
        $("#hidden_cat").val(val);
    });

    //创建可视化编辑器
    $(function () {
        editor =  KindEditor.create('#content', {
            basePath: 'css/zui/lib/kindeditor/',
            uploadJson : '${ctx}/fileUpload',
            fileManagerJson : '${ctx}/fileManager',
            allowFileManager : true,
            bodyClass : 'article-content',
            items : ['source', '|', 'undo', 'redo', '|', 'preview', 'template', 'cut', 'copy', 'paste',
                'plainpaste', 'wordpaste', '|', 'justifyleft', 'justifycenter', 'justifyright',
                'justifyfull', 'insertorderedlist', 'insertunorderedlist', 'indent', 'outdent', 'subscript',
                'superscript', 'clearhtml', 'quickformat', 'selectall', '|', 'fullscreen', '/',
                'formatblock', 'fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold',
                'italic', 'underline', 'strikethrough', 'lineheight', 'removeformat', '|', 'image','multiimage',
                'flash', 'media', 'insertfile', 'table', 'hr', 'emoticons', 'baidumap', 'pagebreak',
                'anchor', 'link', 'unlink']

        });

        KindEditor.sync();

    });

    //私密文章开关点击事件
    $(".switch").click(function () {
        var pd = document.getElementById('private_dream');
        if(pd.checked == true){
            $("#private_dream").val("on");
        }else{
            $("#private_dream").val("off");
        }
    });

    //返回按钮点击事件
    $("#go_back").click(function () {
        location.href ="javascript:history.go(-1);"
    });


    //发表文章点击事件
    $("#sub_dream").click (function(){
        var val =  $("#fen").html();
        if(val.trim()=='博客分类'){
            alert("请选择博客分类！");
            return;
        }

        var tit = $("#txtTitle").val();
        if(tit == null || tit.trim() == ""){
            alert("请输入文章标题！");
            return;
        }
        editor.sync();
        var v1 = $("#content").val();
        if(v1 == null || v1.trim() == ""){
            alert("文章内容为空！");
            return;
        }
        $("#write_form").submit();

    });

    //私密开关回显
    $(function () {
        var v = '${cont.personal}';
        if(v == "1"){
            var pd = document.getElementById('private_dream');
            pd.checked = true;
        }
    });


</script>
</html>