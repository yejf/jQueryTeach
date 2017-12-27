<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>FusionCharts </title>
    <script type="text/javascript" src="${base}/assets/js/fusioncharts/fusioncharts.js"></script>
    <script type="text/javascript" src="${base}/assets/js/fusioncharts/themes/fusioncharts.theme.fint.js"></script>
</head>
<body>
<%--图表渲染的容器--%>
<div id="chartContainer">FusionCharts XT will load here!</div>
</body>
<script>
    FusionCharts.ready(function () {
        var revenueChart = new FusionCharts({
            "type": "column3D",
            "renderAt": "chartContainer",
            "width": "500",
            "height": "300",
            "dataFormat": "jsonurl",
            "dataSource": "${base}/fusioncharts/getData"
        });
        revenueChart.render();
    })
</script>
</html>
