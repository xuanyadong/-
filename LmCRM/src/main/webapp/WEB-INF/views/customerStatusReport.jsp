<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
  <head>
  
    <base href="<%=basePath%>">
    <script src="<%=basePath%>js/echarts.js"></script>
    <script src="<%=basePath%>js/jquery-3.2.1.min.js"></script>
    <script src="<%=basePath%>js/ajax.js"></script>
    <style type="text/css">
    body{
    background-image: url("<%=basePath%>/img/bgreport.jpg");
    background-attachment: fixed;
    background-size: 100% 100%;
    }
    </style>
    <title>部门人数报表</title>
  </head>
  <body>
  <div id="main" style="width: 800px;height:500px; margin: 100px auto;"></div>
  <script type="text/javascript">
        var myChart = echarts.init(document.getElementById('main'));
        var option = {
            title: {
                text: '客户类型',
                 textStyle: {
        		fontSize: 18,
       			 fontWeight: 'bolder',
    		},
                
            },
            tooltip: {},
            toolbox: {
            show: true,
            feature: {
                mark: { show: true },
                dataView: { show: true, readOnly: false },
                magicType: {
                    show: true,
                    type: ['pie', 'funnel'],
                    option: {
                        funnel: {
                            x: '25%',
                            width: '50%',
                            funnelAlign: 'left',
                            max: 1548
                        }
                    }
                },
                restore: { show: true },
                saveAsImage: { show: true }
            }
        },          
            legend: {
             	backgroundColor: 'rgba(255,255,255,0.6)',
             	 orient: 'vertical',
            	x: 'center',
                data:['客户']
            },
            xAxis: {
            	name:'类型',
                data: []
            },
            yAxis: {
            type:'value',
            name:'人数',
            interval:1,
            },
            series: [{
                name: '客户',
                type: 'bar',
                itemStyle:{
                	normal:{
                	color: function(params) {
                        // build a color map as your need.
                        var colorList = [
                          	'#F4E001','#F0805A','#26C0C0', '#D7504B','#C6E579',
                           '#FE8463','#9BCA63','#FAD860','#F3A43B','#60C0DD'
                        ];
                        return colorList[params.dataIndex]
                    }
                	}
                },
                data: []
            }]
        };
	  $(function(){
	  var xAxisdata=[];
	  var serdata=[];
	  	$.ajax({
	  	type:"POST",
	  	url:"customer/listCustomerStatus.do",
	  	success:function(data){
	  	for(var i=0;i<data.length;i++){
	  		xAxisdata.push(data[i].status);
	  		serdata.push(data[i].total);
	  	}
	  		myChart.setOption({
	  		xAxis:{
	  		data:xAxisdata
	  		},
	  		series:[{
	  		name:"客户",
	  		data:serdata
	  		}]
	  		})
	  	},dataType:'json'})
	  
	  });
    // 基于准备好的dom，初始化echarts实例
        // 指定图表的配置项和数据

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
  </body>
</html>
 