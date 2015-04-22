<%@ page language="java" import="java.sql.*,com.user.dao.impl.UserDaoImpl,com.user.util.JdbcUtil" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'My.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<form  method="post" action="<%=basePath%>login">
	<label>用户名：</label>
	<label><input name="user_id" type="text" id="user_id"  /></label>
	<label>密码：</label>
	<label><input name="user_password" type="password" id="user_password" /></label>
	<label><input  type="submit" class="bluebuttom" value="登  录"/></label>
	</form>
	
	 <center>
		<c:forEach var="c" items="${users}">
      <table width="300" border="2" cellpadding="10" cellspacing="1" bgcolor="#E7E7E7" >
		<tr>
		<td><strong>教工号：</strong></td>
		<td><strong>${c.user_id}</strong></td>
		</tr>
		<tr>
		<td><strong>密码：</strong></td>
		<td><strong>${c.user_password}</strong></td>
		</tr>
		<tr>
		<td><strong>姓名：</strong></td>
		<td><strong>${c.user_name}</strong></td>
		</tr>
		<tr>
		<td><strong>性别：</strong></td>
		<td><strong>${c.user_sex}</strong></td>
		</tr>
		<tr>
		<td><strong>院系：</strong></td>
		<td><strong>${c.user_academy}</strong></td>
		</tr>
		<tr>
		<td><strong>手机：</strong></td>
		<td><strong>${c.user_phone}</strong></td>
		</tr>
		<tr>
		<td><strong>QQ：</strong></td>
		<td><strong>${c.user_qq}</strong></td>
		</tr>
		<tr>
		<td><strong>邮箱：</strong></td>
		<td><strong>${c.user_email}</strong></td>
		</tr>
      </table>
     	</c:forEach>
      </center>
	<div>
	
	
	</div>
	
	
	
	
  </body>
</html>
