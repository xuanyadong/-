<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'deptInfo.jsp' starting page</title>
    <link rel="stylesheet" href="<%=basePath%>/plugins/css/layui.css">
	<link rel="stylesheet" href="<%=basePath%>/css/font-awesome.min.css" />
	<link rel="stylesheet" href="<%=basePath%>/css/layout.css" media="all" />
	<script type="text/javascript" src="<%=basePath%>/js/jquery-1.8.2.js"></script>
	<script type="text/javascript" src="<%=basePath%>/plugins/layui1.09/layui.js"></script>
  </head>
  
  <body>
<form class="layui-form" action="javascript:;" id="frm" method="post">
	<fieldset class="layui-elem-field">
		<legend>客户模块管理列表</legend>

		<div class="layui-field-box layui-form">
			<table class="layui-table">
				<colgroup>
					<col width="150">
					<col width="200">
					<col>
				</colgroup>
				<thead>
					<tr>
						<th>客户姓名</th>
						<th>号码</th>
						<th>加入时间</th>
						<th>邮箱</th>
						<th>性别</th>
						<th>状态</th>
						<th>备注</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody id="tbody">

				</tbody>
			</table>

		</div>
	</fieldset>
</form>
	<div class="admin-table-page">
		<div id="paged" class="page"></div>
	</div>


	<script type="text/html" id="tpl">
       
			{{# layui.each(d.list, function(index, item){ }}
			<tr>
				<td>{{ item.customerName }}</td>
				<td>{{ item.customerPhone }}</td>
				<td>{{ item.customerTime }}</td>
				<td>{{ item.customerEmail }}</td>
				<td>{{ item.customerSex}}</td>
				<td>{{ item.status}}</td>
				<td>{{ item.comments}}</td>
				<td><a  onclick="editCustomer({{item.customerId}})"  class="layui-btn layui-btn-mini" "><i class="layui-icon">&#xe642;</i>  </a>
				</td>
			</tr>
			{{# }); }}
</script>

    
	<script type="text/javascript">
		layui.use([ 'laypage', 'layer','form', 'laytpl','jquery' ],
						function() {
							var laypage = layui.laypage, 
							$=layui.jquery,
							layer = layui.layer,
							form=layui.form(), 
							laytpl = layui.laytpl;
                            var onePageCount = 5;
                            function loadPage(page) {
                            	$.post(
										"user/listMyCustom.do",
										{
										    userId:${userId},
											page : page,
											onePageCount : onePageCount
										},
								        function(data) {
													var tpl = $("#tpl").html();
													laytpl(tpl).render(data,function(html) {
														$("#tbody").html(html);
												    });
													laypage({
														cont : 'paged',
														pages : Math.ceil(data.count/ onePageCount),
														curr : page,
														jump : function(obj,first) {
															//怎么获取点击的页数
															if (!first) {
																loadPage(obj.curr);//当前页数
															}
														}
													});
												}, "json");
                            
							}
							loadPage(1);
							
							form.on('checkbox(allselector)', function(data) {
								var elem = data.elem;
								$('#tbody').children('tr').each(function() {
									var $that = $(this);
									//全选或反选
									$that.children('td').eq(0).children('input[type=checkbox]')[0].checked = elem.checked;
									form.render('checkbox');
								});
							});
						});
		function editCustomer(customerId){
			layer.open({
				area: ['500px', '450px'],
	  			type: 2, 
	  			anim:1,
	  			maxmin:true,
	  			shade:0.6,
	  			content: ['${basePath}user/submitCustomer.do?customerId='+customerId+'&userId='+${userId}],//这里content是一个URL，如果你不想让iframe出现滚动条，你还可以content: ['http://sentsin.com', 'no']
		  		end:function(){
		  				location.reload();
		  		}
			});
		}
		
		
		
		
		
	</script>

</body>

</html>
