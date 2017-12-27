<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="/jQueryTeach/assets/js/angular.js"></script>
</head>

<body ng-app="app1" ng-controller="c">

    <%--筛选: <input type="text" ng-model="a">--%>
    <div></div>

    <table>
        <thead>
            <tr>
                <%--<td>{{data.chart.caption}}</td>--%>
                <%--<td>{{data.chart.numberPrefix}}</td>--%>
                <%--<td>{{data.chart.subCaption}}</td>--%>
                <%--<td>{{data.chart.theme}}</td>--%>
                <td>{{data.chart.xaxisName}}</td>
                <td>{{data.chart.yaxisName}}</td>
                <td></td>
            </tr>
        </thead>
        <tbody>
            <tr ng-repeat="x in data.data track by $index">
                <td>{{x.label}}</td>
                <td><input type="text" ng-model="x.value"></td>
                <%--<td>{{x.value}}</td>--%>
            </tr>
        </tbody>
        <button ng-click="sub()">修改</button>
    </table>

</body>
<script>
    var app = angular.module('app1',[])
    app.controller('c',function ($scope,$http) {
//      $http服务:angularjs的ajax
        $scope.data = {
            name:"jack",
            age:18,
            sex:"man"
        }

        $http({
            url:"/jQueryTeach/fusioncharts/getData",
            method:"get"
        }).then(function (res) {
            console.log(res.data)
            $scope.data = res.data

        },function (err) {
            console.log(err)
        })

        $scope.sub = function () {
            console.log($scope.data.data)
//            $http({
//                url:"/jQueryTeach/fusioncharts/getData",
//                method:"post",
//                data:$scope.data
//            }).then(function (res) {
//                console.log(res.data)
//            },function (err) {
//                console.log(err)
//            })
        }


    })
</script>
</html>