<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>jQuery 过滤操作</title>
    <style>

    </style>
    <script src="${base}/assets/js/jquery-1.10.2.min.js"></script>
    <script>

        $(function () {
            //first()获取匹配列表中的第一个元素
            //last()获取匹配列表中的最后一个元素
            //注意:jq(js)中,css的属性名把原来的-去掉,第二个单词首字母大写
            //$("p").first().css("backgroundColor","yellow");
            //$("p").last().css("backgroundColor","pink");

            //通过下标获取
            //$("p").eq(1).css("backgroundColor","black");

            //过滤指定内容(通过选择器)
            $("p").filter(".url").css("backgroundColor","red");
            $("p").not(".url").css("backgroundColor","green");
        });
    </script>
</head>
<body>
<p>菜鸟教程 (index 0).</p>
<p class="url">http://www.runoob.com (index 1)。</p>
<p>google (index 2).</p>
<p class="url">http://www.google.com (index 3)。</p>
</body>
</html>
