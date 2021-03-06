<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" type="image/png" sizes="16x16"
	href="/plugins/images/favicon.png">
<title>LmCRM-三人成盒</title>
<!-- Bootstrap Core CSS -->
<link href="<%=basePath%>bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Editable CSS -->
<link type="text/css" rel="stylesheet"
	href="<%=basePath%>/plugins/bower_components/jsgrid/dist/jsgrid.min.css" />
<link type="text/css" rel="stylesheet"
	href="<%=basePath%>/plugins/bower_components/jsgrid/dist/jsgrid-theme.min.css" />
<!-- Menu CSS -->
<link
	href="<%=basePath%>plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css"
	rel="stylesheet">
<!-- toast CSS -->
<link
	href="<%=basePath%>plugins/bower_components/toast-master/css/jquery.toast.css"
	rel="stylesheet">
<!-- morris CSS -->
<link href="<%=basePath%>plugins/bower_components/morrisjs/morris.css"
	rel="stylesheet">
<!-- animation CSS -->
<link href="<%=basePath%>css/animate.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="<%=basePath%>css/style.css" rel="stylesheet">
<!-- color CSS -->
<link href="<%=basePath%>css/colors/default-dark.css" id="theme"
	rel="stylesheet">
</head>
<body>
	<!-- Preloader -->
	<div class="preloader">
		<div class="cssload-speeding-wheel"></div>
	</div>
	<div id="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top m-b-0">
			<div class="navbar-header">
				<a class="navbar-toggle hidden-sm hidden-md hidden-lg "
					href="javascript:void(0)" data-toggle="collapse"
					data-target=".navbar-collapse"> <i class="ti-menu"></i>
				</a>
				<div class="top-left-part">
					<a class="logo" href="index.html"> <b>
							<!--This is dark logo icon--> <img
							src="../plugins/images/eliteadmin-logo.png" alt="home"
							class="dark-logo" />
						<!--This is light logo icon--> <img
							src="../plugins/images/eliteadmin-logo-dark.png" alt="home"
							class="light-logo" />
					</b> <span class="hidden-xs">
							<!--This is dark logo text--> <img
							src="../plugins/images/eliteadmin-text.png" alt="home"
							class="dark-logo" />
						<!--This is light logo text--> <img
							src="../plugins/images/eliteadmin-text-dark.png" alt="home"
							class="light-logo" />
					</span>
					</a>
				</div>
				<ul class="nav navbar-top-links navbar-left hidden-xs">
					<li><a href="javascript:void(0)"
						class="open-close hidden-xs waves-effect waves-light"> <i
							class="icon-arrow-left-circle ti-menu"></i>
					</a></li>
					<li>
						<form role="search" class="app-search hidden-xs">
							<input type="text" placeholder="搜索..." class="form-control">
							<a href=""> <i class="fa fa-search"></i>
							</a>
						</form>
					</li>
				</ul>
				<ul class="nav navbar-top-links navbar-right pull-right">
					<li class="dropdown"><a
						class="dropdown-toggle waves-effect waves-light"
						data-toggle="dropdown" href="#"> <i class="icon-envelope"></i>
							<div id="note" style="display: none" class="notify">
								<span class="heartbit"></span> <span class="point"></span>
							</div>
					</a>
						<ul class="dropdown-menu mailbox animated bounceInDown">
							<li>
								<div class="drop-title">你有新消息</div>
							</li>
							<li>
								<div class="message-center">
									<a href="#"> <a href="#">
											<%-- <div class="user-img">
												<img src="<%=basePath%>plugins/images/users/pawandeep.jpg"
													alt="user" class="img-circle"> <span
													class="profile-status offline pull-right"></span>
											</div> --%>
											<div id="tongzhi" style="display: none" class="mail-contnet">
												<h5>您有一条新的任务</h5>
												<span class="mail-desc">请刷新当前页面</span> 
												<!-- <span
													class="time">9:02 AM</span> -->
											</div>
									</a>
								</div>
							</li>
							<li><a class="text-center" href="javascript:void(0);"> <strong>查看所有消息</strong>
									<i class="fa fa-angle-right"></i>
							</a></li>
						</ul> <!-- /.dropdown-messages --></li>
					<!-- /.dropdown -->
					<li class="dropdown"><a
						class="dropdown-toggle waves-effect waves-light"
						data-toggle="dropdown" href="#"><i class="icon-note"></i>
							<div class="notify">
								<span class="heartbit"></span> <span class="point"></span>
							</div> </a>
						<ul class="dropdown-menu dropdown-tasks animated slideInUp">
							<li><a href="#">
									<div>
										<p>
											<strong>营销部</strong> <span class="pull-right text-muted">完成40%</span>
										</p>
										<div class="progress progress-striped active">
											<div class="progress-bar progress-bar-success"
												role="progressbar" aria-valuenow="40" aria-valuemin="0"
												aria-valuemax="100" style="width: 40%">
												<span class="sr-only">40% Complete (success)</span>
											</div>
										</div>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<p>
											<strong>客服部</strong> <span class="pull-right text-muted">完成40%</span>
										</p>
										<div class="progress progress-striped active">
											<div class="progress-bar progress-bar-success"
												role="progressbar" aria-valuenow="40" aria-valuemin="0"
												aria-valuemax="100" style="width: 40%">
												<span class="sr-only">40% Complete (success)</span>
											</div>
										</div>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<p>
											<strong>销售部</strong> <span class="pull-right text-muted">完成20%</span>
										</p>
										<div class="progress progress-striped active">
											<div class="progress-bar progress-bar-info"
												role="progressbar" aria-valuenow="20" aria-valuemin="0"
												aria-valuemax="100" style="width: 20%">
												<span class="sr-only">20% Complete</span>
											</div>
										</div>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<p>
											<strong>售后部</strong> <span class="pull-right text-muted">完成60%</span>
										</p>
										<div class="progress progress-striped active">
											<div class="progress-bar progress-bar-warning"
												role="progressbar" aria-valuenow="60" aria-valuemin="0"
												aria-valuemax="100" style="width: 60%">
												<span class="sr-only">60% Complete (warning)</span>
											</div>
										</div>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a href="#">
									<div>
										<p>
											<strong>人事部</strong> <span class="pull-right text-muted">完成80%</span>
										</p>
										<div class="progress progress-striped active">
											<div class="progress-bar progress-bar-danger"
												role="progressbar" aria-valuenow="80" aria-valuemin="0"
												aria-valuemax="100" style="width: 80%">
												<span class="sr-only">80% Complete (danger)</span>
											</div>
										</div>
									</div>
							</a></li>
							<li class="divider"></li>
							<li><a class="text-center" href="#"> <strong>所有部门</strong>
									<i class="fa fa-angle-right"></i>
							</a></li>
						</ul> <!-- /.dropdown-tasks --></li>
				</ul>
			</div>
			<!-- /.navbar-header -->
			<!-- /.navbar-top-links -->
			<!-- /.navbar-static-side -->
		</nav>
		<!-- Left navbar-header -->
		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse slimscrollsidebar">
				<div class="user-profile">
					<div class="dropdown user-pro-body">
						<div>
							<img src="../plugins/images/users/varun.jpg" alt="user-img"
								class="img-circle">
						</div>
						<a href="#" class="dropdown-toggle u-dropdown"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">${user.userName} <span class="caret"></span>
						</a>
						<ul class="dropdown-menu animated flipInY">
							<li><a href="<%=path%>/user/toLogin.do"> <i class="fa fa-power-off"></i>
									退出登录
							</a></li>
						</ul>
					</div>
				</div>
				<ul class="nav" id="side-menu">
					<li class="sidebar-search hidden-sm hidden-md hidden-lg">
						<!-- input-group -->
						<div class="input-group custom-search-form">
							<input type="text" class="form-control" placeholder="搜索...">
							<span class="input-group-btn">
								<button class="btn btn-default" type="button">
									<i class="fa fa-search"></i>
								</button>
							</span>
						</div> <!-- /input-group -->
					</li>
					<li class="nav-small-cap m-t-10">--- 主菜单</li>
					<li><a href="index.html" class="waves-effect active"><i
							class="linea-icon linea-basic fa-fw" data-icon="v"></i> <span
							class="hide-menu"> 客户管理 <span class="fa arrow"></span> <span
								class="label label-rouded label-custom pull-right">4</span></span></a>
						<ul class="nav nav-second-level">
							<li><a href="<%=path%>/user/toPage.do?pageName=customerInfo" target="adminFrame">查看客户</a></li>
							<li><a href="<%=path%>/customer/getcustomerStatusReport.do" target="adminFrame">生成报表</a></li>
						</ul></li>
					<li><a href="inbox.html" class="waves-effect"><i
							data-icon=")" class="ti-user fa-fw"></i> <span class="hide-menu">员工管理
								<span class="fa arrow"></span>
						</span></a>
						<ul class="nav nav-second-level">
							<li><a href="<%=path%>/user/toPage.do?pageName=userInfo" target="adminFrame">查看员工</a></li>
						</ul></li>
						<li><a href="#" class="waves-effect"><i data-icon="/"
							class="linea-icon linea-basic fa-fw"></i> <span class="hide-menu">部门管理<span
								class="fa arrow"></span> <span
								class="label label-rouded label-info pull-right">2</span>
						</span></a>
						<ul class="nav nav-second-level">
							<li><a href="<%=path%>/user/toPage.do?pageName=deptInfo" target="adminFrame">查看部门</a></li>
							<li><a href="<%=path%>/dept/getDeptUserReport.do" target="adminFrame">部门人数报表</a></li>
						</ul></li>
					<li><a href="forms.html" class="waves-effect"><i
							data-icon="&#xe00b;" class="linea-icon linea-basic fa-fw"></i> <span
							class="hide-menu">其他功能<span class="fa arrow"></span></span></a>
						<ul class="nav nav-second-level">
							<li><a href="<%=path%>/pageOffice/leave.do" target="adminFrame">请假审批</a></li>
							<li><a href="javascript:void(0)">正在开发</a></li>
							<li><a href="javascript:void(0)">期待2.0版本</a></li>
						</ul></li>
					<li><a href="<%=path%>/user/toLogin.do" class="waves-effect"> <i
							class="icon-logout fa-fw"></i> <span class="hide-menu">退出登录</span>
					</a></li>
				</ul>
			</div>
		</div>
		<!-- Left navbar-header end -->
		<!-- Page Content -->
		<div id="page-wrapper">

			<div class="container-fluid">
				<div class="row bg-title">
					<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
						<h4 class="page-title">概览</h4>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /row -->
				<!-- /.row -->
				<!-- .row -->
				<div class="row">
					<div class="col-lg-12">
						<div class="white-box">
							<div id="basicgrid">
								<iframe src="<%=path%>/user/toPage.do?pageName=mm" width="100%" height="800px" frameborder="0" scrolling="no"
									id="adminFrame"  name="adminFrame" > </iframe>
							</div>
						</div>
					</div>
				</div>
				<!-- /.row -->
			</div>





			<!-- /.container-fluid -->
			<footer class="footer text-center"> 2017 &copy;
				java-12三人小组独家冠名</footer>
		</div>
		<!-- /#page-wrapper -->
	</div>
	<!-- /#wrapper -->
	<!-- jQuery -->
	<script
		src="<%=basePath%>plugins/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="<%=basePath%>bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- Menu Plugin JavaScript -->
	<script
		src="<%=basePath%>plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
	<!--slimscroll JavaScript -->
	<script src="<%=basePath%>js/jquery.slimscroll.js"></script>
	<!--Wave Effects -->
	<script src="<%=basePath%>js/waves.js"></script>
	<!--Counter js -->
	<script
		src="<%=basePath%>plugins/bower_components/waypoints/lib/jquery.waypoints.js"></script>
	<script
		src="<%=basePath%>plugins/bower_components/counterup/jquery.counterup.min.js"></script>
	<!--Morris JavaScript -->
	<%-- <script src="<%=basePath%>plugins/bower_components/raphael/raphael-min.js"></script>
<script src="<%=basePath%>plugins/bower_components/morrisjs/morris.js"></script> --%>
	<!-- Custom Theme JavaScript -->
	<script src="<%=basePath%>js/custom.js"></script>
	<%-- <script src="<%=basePath%>js/dashboard1.js"></script> --%>
	<!-- Sparkline chart JavaScript -->
	<script
		src="<%=basePath%>plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
	<script
		src="<%=basePath%>plugins/bower_components/jquery-sparkline/jquery.charts-sparkline.js"></script>
	<script
		src="<%=basePath%>plugins/bower_components/toast-master/js/jquery.toast.js"></script>
	<!-- Editable -->
	<%-- <script src="<%=basePath%>plugins/bower_components/jsgrid/db.js"></script>
<script type="text/javascript" src="<%=basePath%>plugins/bower_components/jsgrid/dist/jsgrid.min.js"></script>
<script src="<%=basePath%>js/jsgrid-init.js"></script> --%>
	<script type="text/javascript">
	
		$(document).ready(function() {
			$.toast({
				heading : '雷鸣CRM客户管理',
				text : '此模块展示公司年度业绩总览',
				position : 'top-center',
				loaderBg : '#ff6849',
				icon : 'info',
				hideAfter : 3000,
				
				
	
				stack : 6
			})
		});
	</script>
	<!--Style Switcher -->
	<script
		src="<%=basePath%>plugins/bower_components/styleswitcher/jQuery.style.switcher.js">
	</script>
	<script type="text/javascript">
	var msg;
		setTimeout(function(){
    Push();
//  alert("setTimeout called");
},300);

setInterval(function(){
    Push();
    //alert("setInterval called");
},8000);

function Push(){
	var userId=${user.userId}
    $.ajax({
        type:"POST",
        url:"<%=basePath%>note/getNote.do",//why getTime and wont use
        data:{"userId":userId},
        //beforeSend:function(){},
        success: function(data){
            //alert(data)  //eval使用前要先加括号，才能得到完整的json数据
            if(data!=msg&&data!=0){
				//alert(data)
               // $("#tongzhi-content").html(data.msg);//更新提示内容中的数量部分
                $("#note").css('display','block');//消息提示内容，整个部分都显示出来
                $("#tongzhi").css('display','block');//消息提示内容，整个部分都显示出来
                msg=data;
            }else{
                $("#note").css('display','none');//隐藏整个提示消息部分
                $("#tongzhi").css('display','none');//隐藏整个提示消息部分
            }


        }
    });
}
	</script>
</body>
</html>