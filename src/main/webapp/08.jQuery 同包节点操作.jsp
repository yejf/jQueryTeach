<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>jQuery 同胞节点操作</title>
    <style>
        .siblings * {
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
            //获取当前节点所有的同胞节点
            $("h2").siblings().css({"color":"red","border":"2px solid red"});

            //获取当前节点的下一个直接同胞节点
            //$("h2").next().css({"color":"red","border":"2px solid red"});

            //获取当前节点下的所有同胞节点
            //$("h2").nextAll().css({"color":"red","border":"2px solid red"});

            //获取当前节点下指定区间的同胞节点
            //$("h2").nextUntil("p").css({"color":"red","border":"2px solid red"});

            //prev(),prevAll(),prevUntil()同上,相反
        });
    </script>
</head>
<body class="siblings">
    <div>div (父元素)
        <p>p</p>
        <span>span</span>
        <h2>h2</h2>
        <h3>h3</h3>
        <p>p</p>
    </div>
</body>
</html>
