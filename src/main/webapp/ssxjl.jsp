<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>省市县级联</title>
    <meta charset="UTF-8">
    <script src="${base}/assets/js/jquery-1.10.2.min.js"></script>
    <script>
        $(function () {
            var url = "${base}/ssxjl/getProvince";
            $.get(url, function (data) {
                for (var i = 0; i < data.length; i++) {
                    $("#province").append("<option value='" + data[i].code + "'>" + data[i].name + "</option>");
                }
            });

            $("#province").change(function () {
                var url = "${base}/ssxjl/getCity?provinceCode=" + $(this).val();
                $.get(url, function (data) {
                    $("#city option").not(":first").remove();
                    $("#area option").not(":first").remove();
                    for (var i = 0; i < data.length; i++) {
                        $("#city").append("<option value='" + data[i].code + "'>" + data[i].name + "</option>");
                    }
                });
            });

            $("#city").change(function () {
                var url = "${base}/ssxjl/getArea?cityCode=" + $(this).val();
                console.log(url)
                $.get(url, function (data) {
                    $("#area option").not(":first").remove();
                    for (var i = 0; i < data.length; i++) {
                        $("#area").append("<option value='" + data[i].code + "'>" + data[i].name + "</option>");
                    }
                });
            });
        });
    </script>
</head>
<body>
<h1>AJAX实现省市县级联</h1>
<hr>
<select id="province">
    <option>--请选择省份--</option>
</select>
<select id="city">
    <option>--请选择城市--</option>
</select>
<select id="area">
    <option>--请选择区域--</option>
</select>
</body>
</html>
