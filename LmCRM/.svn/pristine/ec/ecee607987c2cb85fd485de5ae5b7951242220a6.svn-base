<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
    <form class="layui-form" action="<%=path%>/customer/updateCustomer.do" method="post" id="frm">
   
    <input type="hidden" value="${customer.customerId}" name="customerId">
    
    
    
    <div class="layui-form-item">
    <label class="layui-form-label">客户姓名</label>
    <div class="layui-input-block">
    <input style="width: 280px" value="${customer.customerName }" type="text" name="customerName" required  lay-verify="required"  autocomplete="off" class="layui-input">
    </div>
    </div>
    
    <div class="layui-form-item">
    <label class="layui-form-label">号码</label>
    <div class="layui-input-block">
    <input style="width: 280px" value="${customer.customerPhone }" type="text" name="customerPhone" required  lay-verify="required"  autocomplete="off" class="layui-input">
    </div>
    </div>
    
    <div class="layui-form-item">
    <label class="layui-form-label">加入时间</label>
    <div class="layui-input-block">
    <c:if test="${customer.customerTime!=null}">
     <input style="width: 280px" readonly="readonly" value="${customer.customerTime }" type="text" name="customerTime" required  lay-verify="required"  autocomplete="off" class="layui-input">
    </c:if>
    <c:if test="${customer.customerTime==null}">
     <input  style="width: 280px" value="<fmt:formatDate value='<%=new Date()%>' pattern='yyyy-MM-dd'/>" readonly="readonly" type="text" name="customerTime" required  lay-verify="required"  autocomplete="off" class="layui-input">
    </c:if>
    </div>
    </div>
    
    <div class="layui-form-item">
    <label class="layui-form-label">邮箱</label>
    <div class="layui-input-block">
    <input style="width: 280px" value="${customer.customerEmail }" type="text" name="customerEmail" required  lay-verify="required"  autocomplete="off" class="layui-input">
    </div>
    </div>
    
    <div class="layui-form-item" pane>
    <label class="layui-form-label">性别</label>
    <div class="layui-input-block">
    <c:if test="${customer.customerSex.equals('男') }">
          <input type="radio" name="customerSex" value="男" checked="checked" title="男">
          <input type="radio" name="customerSex" value="女" title="女"><br>
   </c:if>         
   <c:if test="${!customer.customerSex.equals('男') }">
          <input type="radio" name="customerSex" value="男" title="男">
          <input type="radio" name="customerSex" value="女" checked="checked" title="女"><br>
   </c:if>      
   </div>
   </div>
   
  <div class="layui-form-item">
      <label class="layui-form-label" >用户状态</label>
      <div class="layui-input-inline" style="width: 280px">
      <select name="status" id="status" lay-filter="status" required>
      <c:forEach items="${status }" var="s" varStatus="i">
      <c:if test="${customer.status==s.itemName }">
      <option value="${s.itemId}" selected="selected">${s.itemName}</option>
      </c:if>
      <c:if test="${customer.status!=s.itemName }">
      <option value="${s.itemId}">${s.itemName}</option>
      </c:if>
      </c:forEach>
      </select>
      </div>
       <label class="layui-form-label" >所属员工</label>
       <div class="layui-input-inline" style="width: 280px">
           <select name="ofStaff" id="ofStaff">
               <option value="" selected></option>
           </select>
       </div>
   </div>
   
    <div class="layui-form-item">
    <label class="layui-form-label">备注</label>
    <div class="layui-input-block">
    <input style="width: 280px" value="${customer.comments }" type="text" name="comments" required  lay-verify="required"  autocomplete="off" class="layui-input">
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
   form.on("select(status)",function () {
    	    $.ajax({
    	       type: "POST",
    	       url: "getofStaff.do",
    	       dataType: "json",
    	       data:{
    	          status:$("#status").val()
    	       },
    	       async:false,
    	       success:function(data){
    	       $("#ofStaff").empty();
    		      for (var i = 0; i < data.length; i++) {
			           if(data[i].userName=="${customer.ofStaff}"){
				          $("#ofStaff").append("<option selected='selected' value=\""+data[i].userId+"\" >"+data[i].userName+"</option>");
			            }else{
			              $("#ofStaff").append("<option value=\""+data[i].userId+"\" >"+data[i].userName+"</option>");
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
