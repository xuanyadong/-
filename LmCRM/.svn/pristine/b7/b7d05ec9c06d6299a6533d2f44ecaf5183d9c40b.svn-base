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
	<script type="text/javascript" src="<%=basePath%>/plugins/layui1.09/layui.js"></script>
  </head>
  
  <body>
	<div class="admin-main">
		<form class="layui-form" action="javascript:;" id="frm" method="post">
			<fieldset class="layui-elem-field">
				<legend>部门信息</legend>
				<div class="layui-field-box layui-form">
					<div class="layui-btn-group">
						<a onclick="del()"
							class="layui-btn layui-btn-danger layui-btn-mini">解散</a>
							 <a href="excel.do?method=exportall"  class="layui-btn layui-btn-mini">导出</a>
					</div>
					<table class="layui-table">
						<thead>
							<tr>
								<th><input type="checkbox" lay-filter="allselector"
									lay-skin="primary"></th>
								<th>编号</th>
								<th>部门</th>
								<th>主管</th>
								<th>人数</th>
								<th>总任务</th>
								<th>已完成</th>
								<th>管理操作</th>
								
							</tr>
						</thead>
						<tbody id="content">

						</tbody>
					</table>

				</div>

			</fieldset>
		</form>
		<div class="admin-table-page">
			<div id="paged" class="page"></div>
		</div>
	</div>

</body>
<script type="text/html" id="tpl">
			{{# layui.each(d.list, function(index, item){ }}
			<tr>
				<td><input type="checkbox"  lay-skin="primary" name="id" value="{{item.id}}"></td>
				<td>{{ item.deptNo }}</td>
				<td>{{ item.deptName }}</td>
				<td>{{ item.deptManager }}</td>
				<td>{{ item.numb }}</td>
				<td>{{ item.allTask }}</td>
				<td>{{ item.finishedTask }}</td>
				<td>
					<a onclick="editUser({{item.id}},this)" class="layui-btn layui-btn-mini">编辑</a>
					<a href="<%=path%>/dept/getDeptTask.do?deptNo={{item.deptNo}}" target="adminFrame" class="layui-btn layui-btn-normal layui-btn-mini">任务进度</a> 
				</td>
			</tr>
			{{# }); }}
		</script>
<script type="text/javascript">
	var curr=1;
	layui.use([ 'laypage', 'layer','laytpl','form','jquery' ], function() {
		
		var laypage = layui.laypage, 
		$=layui.jquery
		form = layui.form(),
		layer = layui.layer,
		laytpl = layui.laytpl;
		var nums = 5;
		//	
				
		function Initialize(maStr) {
			$.post("dept/list.do",
				{
	                count: nums,// 一页显示条数
	                ma: maStr //当前页
	            },function (data) {
	            	
	            	var gettpl = document.getElementById("tpl").innerHTML;
	            	gettpl = $("#tpl").html();
	            	laytpl(gettpl).render(data, function(result) {
	            	//document.getElementById("content").innerHTML = result;
	            		$("#content").html(result);
	            		
	                 });
	            	 
	            	 laypage({
                       cont: 'paged'
                     , pages: Math.ceil(data.count / nums)
                     , curr: maStr || 1
                     , jump: function (obj, first) {
                         if (!first) {
                             Initialize(obj.curr);
                         }
                     	}
                     });
	        },"json"
	            
			);
		}
		Initialize("1");
		
		form.on('checkbox(allselector)', function(data) {
			var elem = data.elem;
			
			$('#content').children('tr').each(function() {
				var $that = $(this);
				//全选或反选
				$that.children('td').eq(0).children('input[type=checkbox]')[0].checked = elem.checked;
				form.render('checkbox');
			});
		});
		
				
	});
	
	//删除用户
	function deleteUser(id,a) {
		layer.confirm('确认删除用户？', {
			btn : [ '确定', '取消' ] 
		}//按钮
			,function(){
					$.ajax({
			             type: "POST",
			             url: 'update.do',
			             data: {
			            	 method:"deluser",
			            	 id:id
			            	 },
			             
			             //dataType: "json",
			             success: function(data){
							$(a).parent().parent().remove();
			                     
							layer.msg(data, {
								icon : 1
							});
			             }
	         		});
				
					
			},
			function(){
				layer.msg('取消删除', {
					icon : 2
				});
			});
	}
	//编辑
	function editUser(id,a){
		
		$.post('update.do',{"id":id,"method":"edit"}, function(form){
			  layer.open({
			    type: 1,
			    title: '查看用户',
			    content: form ,//注意，如果str是object，那么需要字符拼接。
			    area:['450px','550px'],
			     end:function(){
			    	 //alert("修改成功！");
	  				//location.reload();
	  		} 
			    /* btn: ['修改', '返回'],
			    yes:function(){
			    	
			    	//alert($("#id").val());
			    	alert($("#id").val());
			    	 $.ajax({
			    			type: "post",
						 	url: "modify.do",
						 	data: {
							 method:"modify",
							 id:$("#id"),
							 username:$("#username"),
							 sex:$("#sex"),
							 phone:$("#phone"),
							 email:$("#email"),
							 type:$("#type"),
							 status:$("#status")
							 },
							 success:function(data){
								 alert(data);
							 }
						 
			    	}) 
			    }  */
			  });
			});
	}
	//批量删除
	function del(){
		var ids = '';
		var userIds = '';
		$('#content').children('tr').each(function() {
			var $that = $(this);
			var $cbx = $that.children('td').eq(0).children('input[type=checkbox]')[0].checked;
			if($cbx) {
				var n = $($that.children('td').eq(0).children('input[type=checkbox]')[0]).val();
				ids += n + ','; 
				
			}
		});
		
		
		if(ids==''){
			layer.msg('请选择要删除的记录！',{icon:2});
		}else{
			layer.open({
				content:'你确定要删除此数据吗？',
				btn:['确认','取消'],
				shadeClose:false,
				yes:function(){
					$.ajax({
			             type: "POST",
			             url: 'update.do',
			             data: {
			            	 "ids":ids,
			            	 "method":"delusers"
			             },
			             //dataType: "json",
			             success: function(data){
			                layui.use('layer', function(){
	  						var layer = layui.layer;
	  						layer.open({
	  						  content: data
	  						  ,yes: function(index, layero){
	  							location.reload();
	  						  },cancel: function(index, layero){
		  							location.reload();
		  						}
	  						  })
							});     
			             }
	         		});
				}
			})
		}
	}
	
	//导出表格
		function exportlist(){
			layer.confirm('确认导出客户列表？', {
				btn : [ '确定', '取消' ] 
			}//按钮
				,function(){
						$.ajax({
				             type: "POST",
				             url: 'excel.do',
				             data: {
				            	 method:"download",
				            	 },
				             
				             //dataType: "json",
				             success: function(data, status, xhr){
								/* layer.msg(data, {
									icon : 1
								}); */
								
				             }
		         		});
						
						
				},
				function(){
					layer.msg('取消导出', {
						icon : 2
					});
					
				
				});
	}
		
		
</script>
</html>
