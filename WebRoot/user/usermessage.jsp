<%@page import="com.user.bean.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'usermessage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/table.css">
  </head>
  
  <body>
  <center>
<form id="form" name="form" method="post" action="showuser" > 
     <table>
					<tr>
						<td align="left"><span class="error_div">*</span>教工号：</td>
						<td align="left">${sessionScope.user.user_id}</td>
					</tr>
					<tr>
						<td width="87" align="left"><span class="error_div">*</span>姓名：</td>
						<td colspan="2" align="left">${sessionScope.user.user_name} </td>
					</tr>
					<tr>
						<td align="left"><span class="error_div">*</span>性别：</td>
						<td colspan="2" align="left">${sessionScope.user.user_sex}</td>
					</tr>
					<tr>
						<td align="left"><span class="error_div">*</span>院系：</td>
						<td>${sessionScope.user.user_academy}</td>
					</tr>
					<tr>
						<td align="left"><span class="error_div">*</span>手机：</td>
						<td colspan="2" align="left">${sessionScope.user.user_phone}</td>
					</tr>
					<tr>
						<td align="left"><span class="error_div">*</span>QQ：</td>
						<td colspan="2" align="left">${sessionScope.user.user_qq}</td>
					</tr>
					<tr>
						<td align="left"><span class="error_div">*</span>邮箱：</td>
						<td colspan="2" align="left">${sessionScope.user.user_email}</td>
					</tr>
	</table>
</form>
      <label><a href="userservlet?method=preEdit&user_id=${sessionScope.user.user_id}" class="blue" target="main">修改信息</a></label>
      </center>
  </body>
  <%
 	//声明局部变量
 	String messageUpdate = (String) request.getAttribute("messageUpdate");
 	//编写代码

 	if (messageUpdate != null) {
 		if (messageUpdate.equals("success")) {
 %> 
 <script type="text/javascript" defer="defer">
		alert("恭喜，信息更新成功！");
	</script> 
<%
 	}
 	}
 %>
 
 
</html>
