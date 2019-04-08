<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'editOrAddUser.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="<%=basePath%>plugins/css/layui.css">
	<script type="text/javascript" src="<%=basePath%>js/ajax.js"></script>
    <script type="text/javascript" src="<%=basePath%>js/jquery-1.8.2.js"></script>
    <script type="text/javascript" src="<%=basePath%>plugins/layui1.09/layui.js"></script>
  </head>
  <script type="text/javascript">
  	
  </script>
  <body>
    <form class="layui-form" action="<%=path%>/user/updateUser.do" method="post" id="frm">
   
    <input type="hidden" value="${user.userId}" name="userId">
    
    <div class="layui-form-item">
    <label class="layui-form-label">员工编号</label>
    <div class="layui-input-block">
    <c:if test="${user.userNo!=null}">
     <input style="width: 280px" readonly="readonly" value="${user.userNo }" type="text" name="userNo" required  lay-verify="required"  autocomplete="off" class="layui-input">
    </c:if>
    <c:if test="${user.userNo==null}">
     <input style="width: 280px" value="${user.userNo }" type="text" name="userNo" required  lay-verify="required"  autocomplete="off" class="layui-input">
    </c:if>
   
    </div>
    </div>
    
    <div class="layui-form-item">
    <label class="layui-form-label">姓名</label>
    <div class="layui-input-block">
    <input style="width: 280px" value="${user.userName }" type="text" name="userName" required  lay-verify="required"  autocomplete="off" class="layui-input">
    </div>
    </div>
    
    <div class="layui-form-item" pane>
    <label class="layui-form-label">性别</label>
    <div class="layui-input-block">
    <c:if test="${user.sex.equals('男') }">
          <input type="radio" name="sex" value="男" checked="checked" title="男">
          <input type="radio" name="sex" value="女" title="女"><br>
   </c:if>         
   <c:if test="${!user.sex.equals('男') }">
          <input type="radio" name="sex" value="男" title="男">
          <input type="radio" name="sex" value="女" checked="checked" title="女"><br>
   </c:if>      
   </div>
   </div>
   
    <div class="layui-form-item">
    <label class="layui-form-label">密码</label>
    <div class="layui-input-block">
    <input style="width: 280px" value="${user.pass }" type="text" name="pass" required  lay-verify="required"  autocomplete="off" class="layui-input">
    </div>
    </div>
    
    <div class="layui-form-item">
    <label class="layui-form-label">电话</label>
    <div class="layui-input-block">
    <input style="width: 280px" value="${user.phone }" type="text" name="phone" required  lay-verify="required"  autocomplete="off" class="layui-input">
    </div>
    </div>
    
    <div class="layui-form-item">
    <label class="layui-form-label">邮箱</label>
    <div class="layui-input-block">
    <input style="width: 280px" value="${user.email }" type="text" name="email" required  lay-verify="required"  autocomplete="off" class="layui-input">
    </div>
    </div>
    
    <div class="layui-form-item">
      <label class="layui-form-label" >部门</label>
      <div class="layui-input-inline" style="width: 280px">
      <select name="dept" id="dept" lay-filter="dept" required>
      <c:forEach items="${dept }" var="d" varStatus="i">
      <c:if test="${user.dept==d.itemName }">
      <option value="${d.itemId}" selected="selected">${d.itemName}</option>
      </c:if>
      <c:if test="${user.dept!=d.itemName }">
      <option value="${d.itemId}">${d.itemName}</option>
      </c:if>
      </c:forEach>
      </select>
      </div>
       <label class="layui-form-label" >职位</label>
       <div class="layui-input-inline" style="width: 280px">
           <select name="role" id="role">
               <option value="" selected></option>
           </select>
       </div>
   </div>
   
  
  <div class="layui-form-item">
    <label class="layui-form-label">状态</label>
    <div class="layui-input-block" style="width: 280px">
      <select name="isOnjob" lay-verify="required">
        <option value=""></option>
        <c:forEach items="${isOnjob }" var="is" varStatus="i">
           <c:if test="${user.isOnjob==is.itemName }">
           <option value="${is.itemId}" selected="selected">${is.itemName}</option>
           </c:if>
            <c:if test="${user.isOnjob!=is.itemName }">
           <option value="${is.itemId}">${is.itemName}</option>
           </c:if>
        </c:forEach>
      </select>
    </div>
  </div>
   
    <div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" type="submit" onclick="return f()" >立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
    </form>
  </body>
  
   <script type="text/javascript">
	function f(){
		var index = parent.layer.getFrameIndex(window.name); //获取当前窗体索引
		parent.layer.close(index);
		return true;
	}
	
</script>
  
  <script>
  
//Demo
layui.use('form', function(){
  var form = layui.form();
  //监听下拉框事件
   form.on("select(dept)",function () {
    	
    	    $.ajax({
    	       type: "POST",
    	       url: "getRole.do",
    	       dataType: "json",
    	       data:{
    	          deptId:$("#dept").val()
    	       },
    	       async:false,
    	       success:function(data){
    	       $("#role").empty();
    		      for (var i = 0; i < data.length; i++) {
			           if(data[i].itemName=="${user.role}"){
				          $("#role").append("<option selected='selected' value=\""+data[i].itemId+"\" >"+data[i].itemName+"</option>");
			            }else{
			              $("#role").append("<option value=\""+data[i].itemId+"\" >"+data[i].itemName+"</option>");
			           }
		           }
    	     }
    	     })
          form.render('select'); //这个很重要
     })
  //监听提交
  $("#").on('submit(formDemo)', function(data){
    layer.msg(JSON.stringify(data.field));
    return false;
  });
});
</script>


  
</html>
