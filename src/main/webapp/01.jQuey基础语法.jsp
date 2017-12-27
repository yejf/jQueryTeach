<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>jQuery基础语法</title>
	<%--导入本地jQuery文件--%>
	<script src="${base}/assets/js/jquery-1.10.2.min.js"></script>
	<%--<script src="${base}/assets/js/base.js"></script>--%>

	<%--使用各种CDN加速服务(本质就是调用远程服务器上的jq文件,需要联网的)--%>
	<%--<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
	</script>--%>

	<script>
		//jQuery完整语法
		//1.把dom对象转换成jq对象
		//2.调用jq的高阶方法(只有jq对象才能调用jq方法)
		//3.调用方法过后干嘛
       /* jQuery(document).ready(function(){
            jQuery("p").click(function(){
                jQuery(this).hide();
            });
        });*/

       //多库并存情况下如何处理$所有权的方式:
       //解除$在该库中的所有权
       //$.noConflict();

		//解除所有权的同时赋值一个新的标识
        jq = $.noConflict();

        //jQuery精简语法
		//注意:在jQuery中$就是jQuery
		//永远以页面加载完毕事件开头  $(function(){});
		//$(选择器).jq方法(方法调用后执行的方法)
        jq(function(){
            jq("p").click(function(){
                jq(this).hide(function(){
                   alert("你看不到我!");
			   });
           });
	   });

       //jq的优点:
		//1.极大的简化JS的编程
		//2.实现了HTML和JS的完全分离
	</script>
</head>
<body>
	<p>Hello jQuery</p>
</body>
</html>
