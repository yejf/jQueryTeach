<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>jQuery 父节点操作</title>
    <style>
        /*.ancestors * {
            display: block;
            border: 2px solid lightgrey;
            color: lightgrey;
            padding: 5px;
            margin: 15px;
        }*/
    </style>
    <script src="${base}/assets/js/jquery-1.10.2.min.js"></script>
    <script>
        $(function () {
            //获取当前节点的直接父节点(一个)
            //$("span").parent().css("borderColor","red");

            //获取当前节点的所有父节点(多个)
            //$("span").parents().css("borderColor","red");

            //获取当前节点到指定节点之间的所有父节点
            //$("span").parentsUntil("div").css("borderColor","red");

            $(":button").click(function(){
                //删除当前元素及其子元素
                $(this).parent().parent().remove();

                //删除当前元素下的所有子元素(当前元素保留)
                //$(this).parent().parent().empty();
            });
        });
    </script>
</head>
<body class="ancestors"> body (曾曾祖父元素)
<div style="width:500px;">div (曾祖父元素)
    <ul>ul (祖父元素)
        <li>li (父元素)
            <span>span</span>
        </li>
    </ul>
</div>
<hr/>
<table border="1" cellpadding="10" cellspacing="0">
    <tr>
        <td>编号</td>
        <td>姓名</td>
        <td>年龄</td>
        <td>操作</td>
    </tr>
    <tr>
        <td>1</td>
        <td>AA</td>
        <td>20</td>
        <td>
            <input type="button" value="删除"/>
        </td>
    </tr>
    <tr>
        <td>2</td>
        <td>BB</td>
        <td>25</td>
        <td>
            <input type="button" value="删除"/>
        </td>
    </tr>
    <tr>
        <td>3</td>
        <td>CC</td>
        <td>18</td>
        <td>
            <input type="button" value="删除"/>
        </td>
    </tr>
</table>
</body>
</html>
