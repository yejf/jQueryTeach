<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>jQuery DOM操作</title>
    <script src="${base}/assets/js/jquery-1.10.2.min.js"></script>
    <script>
        //jQuery编程两大原则
        //2.有參set,无参get
        $(function () {
            $("#btn1").click(function () {
                //获取标记之间的纯文本值(忽略HTML标记)
                alert($("#test").text());
            });
            $("#btn2").click(function () {
                //获取标记之间的所有内容(包含HTML标记)
                alert($("#test").html());
            });
            $("#btn3").click(function () {
                $("#test").text("这是一段<b>新的</b>文本。");
            });
            $("#btn4").click(function () {
                //获取标记之间的所有内容(包含HTML标记)
                $("#test").html("这是一段<b>新的</b>文本。");
            });
            $("#btn5").click(function () {
                //获取文本输入框中的值
                alert($(":text").val());
            });
            $("#btn6").click(function () {
                //设置文本输入框中的值
                $(":text").val("用户名");
            });
        });
    </script>
</head>
<body>
<p id="test">这是段落中的 <b>粗体</b> 文本。</p>
<br/>
<input type="text" value=""/>
<hr/>
<button id="btn1">显示文本</button>
<button id="btn2">显示HTML</button>
<button id="btn3">设置文本</button>
<button id="btn4">设置HTML</button>
<button id="btn5">获取值(元素具有value属性的才能获取到)</button>
<button id="btn6">设置值</button>
<hr/>
</body>
</html>
