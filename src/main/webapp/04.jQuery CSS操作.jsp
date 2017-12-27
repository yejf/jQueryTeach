<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>jQuery CSS操作</title>
    <style>
        .myimg {
            opacity: 0.5;
            width: 100px;
            height: 80px;
        }
    </style>
    <script src="${base}/assets/js/jquery-1.10.2.min.js"></script>
    <script>
        $(function () {
            $("img").mouseenter(function () {
                $(this).attr("src", "${base}/assets/image/07.jpg");
            }).mouseleave(function () {
                $(this).attr("src", "${base}/assets/image/06.jpg");
            });

            $("#btn").click(function () {
                //修改单个样式
                //$("img").css("opacity", 0.5);

                //修改多个样式
                /*$("img").css({
                 opacity: 0.5,
                 width: "100px",
                 height: "80px"
                 });*/

                //套用样式表进行修改
                $("img").addClass("myimg");
            });
        });
    </script>
</head>
<body>
<input type="button" id="btn" value="半透明"/>
<hr/>
<img src="${base}/assets/image/06.jpg"/>
</body>
</html>
