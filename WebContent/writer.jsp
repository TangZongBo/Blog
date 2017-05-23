<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        	 
        }
    </script>
</head>
<body>
            <textarea rows="1" cols="50" style="margin-left: 5%" placeholder="请输入你文章的标题"></textarea>
            <div class="editormd" id="test-editormd">

                <textarea class="editormd-markdown-textarea" id="text1" name="test-editormd-markdown-doc"></textarea>
            <!-- 第二个隐藏文本域，用来构造生成的HTML代码，方便表单POST提交，这里的name可以任意取，后台接受时以这个name键为准 -->
            <textarea class="editormd-html-textarea" name="text"></textarea>
            </div>
            
            <form>
                <input type="submit" value="提交" style="margin-left: 47%;width: 120px;height:50px;padding: 0;" onclick="system();">
            </form>
</body>
</html>