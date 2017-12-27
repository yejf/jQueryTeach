<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>jQuery基础语法</title>
    <script src="${base}/assets/js/jquery-1.10.2.min.js"></script>
    <script>
        //编程原则:
        //1.拿到什么做什么
        //2.
        $(function () {
            $("#btn1").click(function () {
                $("#mi").fadeOut(3000,"linear",function(){
                    alert("没了...");
                });
            });
            $("#btn2").click(function () {
                $("#mi").fadeIn();
            });
            $("#btn3").click(function () {
                $("#mi").fadeToggle();
            });

            //jq的动画方法
            $("#btn4").click(function () {
                $("#md").animate({
                    left:'250px',
                    opacity:'0.5',
                    width:'100px',
                    height:'50px'
                });
            });
        });
    </script>
</head>
<body>
<input id="btn1" type="button" value="淡入"/>
<input id="btn2" type="button" value="淡出"/>
<input id="btn3" type="button" value="切换"/>
<input id="btn4" type="button" value="动画"/>
<hr/>
<img id="mi" src="${base}/assets/image/pic.jpg"/>
<hr/>
<div id="md" style="position:absolute;background-color: greenyellow;width: 200px;height: 150px"></div>
</body>
</html>
