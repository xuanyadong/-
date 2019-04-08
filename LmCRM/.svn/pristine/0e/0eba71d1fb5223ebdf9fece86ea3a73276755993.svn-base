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
    background: url("<%=basePath%>/img/bgreport.jpg") no-repeat;
    background-attachment:fixed;
    background-size:100% 100%; 
	 }
    </style>
    <title>部门人数报表</title>
  </head>
  <body>
  <div id="main" style="width: 800px;height:500px; margin: 130px auto;"></div>
  <script type="text/javascript">
  
   var myChart = echarts.init(document.getElementById('main'));
        var option = {
       
            title: {
                text: '个人任务进度',
                x:'center',
                 textStyle: {
        		fontSize: 18,
       			 fontWeight: 'bolder',
    		},
                
            },
            tooltip: {},
             legend: {
            orient: 'vertical',
            x: 'left',
            data: []
       	 },    
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
            series: [{
                name: '任务',
                type: 'pie',
                itemStyle:{
                	normal:{
                	color:function(params) {
                        // build a color map as your need.
                        var colorList = [
                       '#009688', '#FA6804'
                        ];
                        return colorList[params.dataIndex]
                	},
                	borderColor: 'grey	',
                	},
                	 labelLine: {
                show: true,
                length: 20,
                lineStyle: {
                    color: "black",
                    width: 5,
                    type: 'solid'
                }
            	}
                },
                data: []
            }],
        };
	  $(function(){
	  var names=[];
	  var brower=[];
	    $.ajax({
            type:'POST',
            dataType : "json",
            data:{userId:${userId}},
            url:'user/getUserTaskReport.do',
            success:function(mydata){  
            for(var key in mydata){
            names.push(key);
            brower.push({
            name:key,
            value:mydata[key]
            })
            }
            myChart.setOption({
	  		  legend: {
                data:names,
            },
	  		series:[{
	  		data:brower
	  		}]
	  		})
            }
            })
            
	  });
        myChart.setOption(option);
    </script>
  
  </body>
</html>
  