<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>jQuery UI</title>
    <link href="${base}/assets/css/jquery-ui.min.css">
    <script src="${base}/assets/js/jquery-1.10.2.min.js"></script>
    <script src="${base}/assets/js/jquery-ui.min.js"></script>
    <script>
        $(function () {
            $("#draggable").draggable();
        });
    </script>
    <style>
        div {
            background-color: yellow;
            width: 100px;
            height: 50px;
        }
    </style>
</head>
<body>
<div id="draggable" class="ui-widget-content">
    <p>请拖动我！</p>
</div>
</body>
</html>
