<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" type="image/png" sizes="16x16" href="<%=basePath%>plugins/images/favicon.png">
<title>Elite Admin - is a responsive admin template</title>
<!-- Bootstrap Core CSS -->
<link href="<%=basePath%>bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Menu CSS -->
<link href="<%=basePath%>plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
<!-- toast CSS -->
<link href="<%=basePath%>plugins/bower_components/toast-master/css/jquery.toast.css" rel="stylesheet">
<!-- morris CSS -->
<link href="<%=basePath%>plugins/bower_components/morrisjs/morris.css" rel="stylesheet">
<!-- animation CSS -->
<link href="<%=basePath%>css/animate.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="<%=basePath%>css/style.css" rel="stylesheet">
<!-- color CSS -->
<link href="<%=basePath%>css/colors/default-dark.css" id="theme"  rel="stylesheet">
</head>
<body>
<!-- Preloader -->
      
      <!-- /.row -->
      <div class="row">
        <div class="col-md-12 col-lg-12 col-sm-12">
          <div class="white-box">
            <div class="row row-in">
              <div class="col-lg-3 col-sm-6 row-in-br">
                <div class="col-in row">
                  <div class="col-md-6 col-sm-6 col-xs-6"> 
                  	<i data-icon="E" class="linea-icon linea-basic" ></i>
                    <h5 class="text-muted vb">客户量</h5>
                  </div>
                  <div class="col-md-6 col-sm-6 col-xs-6">
                    <h3 class="counter text-right m-t-15 text-danger">23</h3>
                  </div>
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="progress">
                      <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%"> 
                      	<span class="sr-only">40% Complete (success)</span> 
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-sm-6 row-in-br  b-r-none">
                <div class="col-in row">
                  <div class="col-md-6 col-sm-6 col-xs-6"> 
                  	<i class="linea-icon linea-basic" data-icon="&#xe01b;"></i>
                    <h5 class="text-muted vb">月成交</h5>
                  </div>
                  <div class="col-md-6 col-sm-6 col-xs-6">
                    <h3 class="counter text-right m-t-15 text-megna">169</h3>
                  </div>
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="progress">
                      <div class="progress-bar progress-bar-megna" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%"> 
                      	<span class="sr-only">40% Complete (success)</span> 
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-sm-6 row-in-br">
                <div class="col-in row">
                  <div class="col-md-6 col-sm-6 col-xs-6"> 
                  	<i class="linea-icon linea-basic" data-icon="&#xe00b;"></i>
                    <h5 class="text-muted vb">新客户</h5>
                  </div>
                  <div class="col-md-6 col-sm-6 col-xs-6">
                    <h3 class="counter text-right m-t-15 text-primary">157</h3>
                  </div>
                  <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="progress">
                      <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%"> 
                      	<span class="sr-only">40% Complete (success)</span> 
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="col-lg-3 col-sm-6  b-0">
                <div class="col-in row">
                  <div class="col-md-6 col-sm-6 col-xs-6"> 
                  	<i class="linea-icon linea-basic" data-icon="&#xe016;"></i>
                    <h5 class="text-muted vb">总销量</h5>
                  </div>
                  <div class="col-md-6 col-sm-6 col-xs-6">
                    <h3 class="counter text-right m-t-15 text-success">431</h3>
                  </div>
                  <div class="col-md-12 col-sm-12 col-xs-12">
	                  <div class="progress">
	                  	<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%"> 
	                  		<span class="sr-only">40% Complete (success)</span> 
	                  	</div>
	                  </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--row -->
      <!-- /.row -->
      <div class="row">
        <div class="col-md-12 col-lg-12 col-sm-12 col-xs-12">
          <div class="white-box">
            <h3 class="box-title">销售额</h3>
            <ul class="list-inline text-right">
              <li>
                <h5>
                	<i class="fa fa-circle m-r-5" style="color: #00bfc7;"></i>营销部
                </h5>
              </li>
              <li>
                <h5>
                	<i class="fa fa-circle m-r-5" style="color: #fb9678;"></i>客服部
                </h5>
              </li>
              <li>
                <h5>
                	<i class="fa fa-circle m-r-5" style="color: blue;"></i>销售部
                </h5>
              </li>
              <li>
                <h5>
                	<i class="fa fa-circle m-r-5" style="color: red;"></i>售后部
                </h5>
              </li>
              <li>
                <h5>
                	<i class="fa fa-circle m-r-5" style="color: #9665ce;"></i>人事部
                </h5>
              </li>
            </ul>
            <div id="morris-area-chart" style="height: 340px;"></div>
          </div>
        </div>
      </div>
     
<!-- jQuery -->
<script src="<%=basePath%>plugins/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Menu Plugin JavaScript -->
<script src="<%=basePath%>plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
<!--slimscroll JavaScript -->
<script src="<%=basePath%>js/jquery.slimscroll.js"></script>
<!--Wave Effects -->
<script src="<%=basePath%>js/waves.js"></script>
<!--Counter js -->
<script src="<%=basePath%>plugins/bower_components/waypoints/lib/jquery.waypoints.js"></script>
<script src="<%=basePath%>plugins/bower_components/counterup/jquery.counterup.min.js"></script>
<!--Morris JavaScript -->
<script src="<%=basePath%>plugins/bower_components/raphael/raphael-min.js"></script>
<script src="<%=basePath%>plugins/bower_components/morrisjs/morris.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/custom.js"></script>
<script src="<%=basePath%>js/dashboard1.js"></script>
<!-- Sparkline chart JavaScript -->
<script src="<%=basePath%>plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
<script src="<%=basePath%>plugins/bower_components/jquery-sparkline/jquery.charts-sparkline.js"></script>
<script src="<%=basePath%>plugins/bower_components/toast-master/js/jquery.toast.js"></script>
<script type="text/javascript">
  
  /*  $(document).ready(function() {
      $.toast({
        heading: '欢迎来到雷鸣CRM',
        text: 'Use the predefined ones, or specify a custom position object.',
        position: 'top-right',
        loaderBg:'#ff6849',
        icon: 'info',
        hideAfter: 3500, 
        
        stack: 6
      })
    }); */
</script>
<!--Style Switcher -->
<script src="<%=basePath%>plugins/bower_components/styleswitcher/jQuery.style.switcher.js"></script>
</body>
</html>