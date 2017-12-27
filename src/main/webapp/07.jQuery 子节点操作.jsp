<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>jQuery 子节点操作</title>
    <style>
        .descendants * {
            display: block;
            border: 2px solid lightgrey;
            color: lightgrey;
            padding: 5px;
            margin: 15px;
        }
    </style>
    <script src="${base}/assets/js/jquery-1.10.2.min.js"></script>
    <script>
        $(function () {
            //获取当前元素下所有的直接子节点
            //$("div").children().css({"color":"red","border":"2px solid red"});

            //获取当前元素下所有的直接子节点,就过滤条件
            //$("div").children("p.2").css({"color":"red","border":"2px solid red"});

            //获取当前元素下所有的子元素(*表示所有)
            //$("div").find("*").css({"color":"red","border":"2px solid red"});

            //获取当前元素下的指定子元素
            $("div").find("span").css({"color":"red","border":"2px solid red"});
        });
    </script>
</head>
<body>

<div class="descendants" style="width:500px;">div (当前元素)
    <p class="1">p (儿子元素)
        <span>span (孙子元素)</span>
    </p>
    <p class="2">p (儿子元素)
        <span>span (孙子元素)</span>
    </p>
</div>
</body>
</html>
