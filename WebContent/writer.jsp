<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">

    <link rel="stylesheet" href="css/editormd.css"/>
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="js/editormd.min.js"></script>
    <title></title>
    <script type="text/javascript">
        $(function() {
            editormd("test-editormd", {
                width   : "90%",
                height  : 640,
                syncScrolling : "single",
                //你的lib目录的路径，我这边用JSP做测试的
                path    : "lib/",
                //这个配置在simple.html中并没有，但是为了能够提交表单，使用这个配置可以让构造出来的HTML代码直接在第二个隐藏的textarea域中，方便post提交表单。
                saveHTMLToTextarea : true
            });
        });
        function system(){
        	document.getElementById("hidden1").value=document.getElementById("name").value;
        	document.getElementById("hidden2").value=document.getElementById("text1").value;
          
        }
        
        
    </script>
</head>
<body>
              <%
                 if(request.getSession().getAttribute("user")==null){
                	   request.getSession().setAttribute("msg","请登录!!!");
                	   response.sendRedirect(request.getContextPath()+"/error.jsp");
                 }
              
              %>

             <c:if test="${not empty param.update }">
            <textarea rows="1" cols="50" style="margin-left: 5%" placeholder="请输入你文章的标题" id="name" required="required">${bowen.name}</textarea>
            <div class="editormd" id="test-editormd">

                <textarea class="editormd-markdown-textarea" id="text1"  name="test-editormd-markdown-doc" required="required">${bowen.content}</textarea>
            <!-- 第二个隐藏文本域，用来构造生成的HTML代码，方便表单POST提交，这里的name可以任意取，后台接受时以这个name键为准 -->
            <textarea class="editormd-html-textarea" name="text" id="text3" form="form1" required="required">${bowen.code}</textarea>
            </div>
            <form action="${pageContext.request.contextPath }/UpdateBowenAction.action" method="post" id="form1">
                 <input type="hidden" name="hidden1" id="hidden1">
                  <input type="hidden" name="hidden2" id="hidden2">
                <input type="submit" value="提交" style="margin-left: 47%;width: 120px;height:50px;padding: 0;" onclick="system();">
            </form>
            </c:if>
            <c:if test="${empty param.update }">
            <textarea rows="1" cols="50" style="margin-left: 5%" placeholder="请输入你文章的标题" id="name" required="required"></textarea>
            <div class="editormd" id="test-editormd">

                <textarea class="editormd-markdown-textarea" id="text1"  name="test-editormd-markdown-doc" required="required"></textarea>
            <!-- 第二个隐藏文本域，用来构造生成的HTML代码，方便表单POST提交，这里的name可以任意取，后台接受时以这个name键为准 -->
            <textarea class="editormd-html-textarea" name="text" id="text3" form="form1" required="required"></textarea>
            </div>
              <form action="${pageContext.request.contextPath }/WriterAction.action" method="post" id="form1">
                 <input type="hidden" name="hidden1" id="hidden1">
                  <input type="hidden" name="hidden2" id="hidden2">
                <input type="submit" value="提交" style="margin-left: 47%;width: 120px;height:50px;padding: 0;" onclick="system();">
            </form>
            </c:if>
            
          
</body>
</html>