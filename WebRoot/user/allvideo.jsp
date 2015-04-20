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

  </head>
  
  <body>
  <center>
      <table width="300" border="2" cellpadding="10" cellspacing="1" bgcolor="#E7E7E7" >
		<tr><td><strong>教工号：</strong></td></tr>
		<tr><td><strong>密码：</strong></td></tr>
		<tr><td><strong>姓名：</strong></td></tr>
		<tr><td><strong>性别：</strong></td></tr>
		<tr><td><strong>院系：</strong></td></tr>
		<tr><td><strong>手机：</strong></td></tr>
		<tr><td><strong>QQ：</strong></td></tr>
		<tr><td><strong>邮箱：</strong></td></tr>
		<c:forEach var="c" items="${users}">
     	<tr><td><strong>${c.user_id}</strong></td></tr>
     	<tr><td><strong>${c.user_password}</strong></td></tr>
     	<tr><td><strong>${c.user_name}</strong></td></tr>
     	<tr><td><strong>${c.user_sex}</strong></td></tr>
     	<tr><td><strong>${c.user_academy}</strong></td></tr>
     	<tr><td><strong>${c.user_phone}</strong></td></tr>
     	<tr><td><strong>${c.user_qq}</strong></td></tr>
     	<tr><td><strong>${c.user_email}</strong></td></tr>
     	</c:forEach>
      </table>
      </center>
  </body>
</html>
