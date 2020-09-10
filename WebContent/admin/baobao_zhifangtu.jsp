<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="main" style="width: 600px;height:400px;"></div>

<script src="../js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>
<script src="../js/echarts.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	 // 基于准备好的dom，初始化echarts实例
     var myChart = echarts.init(document.getElementById('main'));
     // 指定图表的配置项和数据
     var option = {
         title: {
             text: '2020年每月销售总额报表'
         },
         tooltip: {},
         legend: {
             data:['销售总额']
         },
         xAxis: {
             data: []
         },
         yAxis: {},
         series: [{
             name: '销售总额',
             type: 'bar',
             data: []
         }]
     };
	 myChart.setOption(option);
	 myChart.showLoading();
	 function getajaxdata(objyear) {
         $.ajax({
             type: "post",
             url: "../ajax",
             data: { rnum:11, cyear: objyear },
             timeout: 5000,
             dataType: "json",
             async: true,//默认设置为true，所有请求均为异步请求
             //cache：true,//默认为true（当dataType为script时，默认为false）设置为false将不会从浏览器缓存中加载请求信息。
             success: function (data) {
                //{"datamonths":["1月","2月","3月"],"dataitems":[100,200,150]}
                 myChart.hideLoading();
                 var optionhasvalue = {
                     xAxis: {
                         type: 'category',
                         data: data.datamonths
                     },
                     yAxis: {
                         type: 'value'
                     },
                     series: [{
                         data: data.dataitems,
                         type: 'bar'
                        
                     }]
                 };
                 myChart.setOption(optionhasvalue);
             }
         });
     }

     getajaxdata(2020);
     /*
     $("#yearselect").change(function () {
         var v = $(this).val();
         getajaxdata(v);
     });
	*/

</script>
</body>
</html>