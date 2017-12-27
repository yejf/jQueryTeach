<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>jQuery 增删节点操作</title>
    <script src="${base}/assets/js/jquery-1.10.2.min.js"></script>
    <script>
        $(function () {
            $("#btn1").click(function () {
                $("p").append("<b>这是新添加的段落。</b>");
            });
            $("#btn2").click(function () {
                $("p").prepend("<i>这是新添加的段落。</i>");
            });
            $("#btn3").click(function () {
                $("p").before("<span style='color:red'>这是新添加的段落。</span>");
            });
            $("#btn4").click(function () {
                $("p").after("<span style='color:green'>这是新添加的段落。</span>");
            });
        });
    </script>
</head>
<body>
<button id="btn1">添加文本(append)</button>
<button id="btn2">添加文本(prepend)</button>
<button id="btn3">添加文本(before)</button>
<button id="btn4">添加文本(after)</button>
<hr/>
<p>这是一个段落。</p>
</body>
</html>
