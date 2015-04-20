<%@page import="com.user.dao.impl.UserDaoImpl"%>
<%@ page language="java" import="java.util.*,java.sql.*,com.user.util.JdbcUtil" pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>五邑大学微课教学专题网</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/Style.css">
	<script type="text/javascript" src="<%=basePath%>js/lunboimg.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.2.6.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/tween.js"></script>
  </head>
  <body>

<jsp:include page="../top.jsp"></jsp:include> 

<table width="990" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="183" height="121" align="left" valign="top"><table width="183" border="0" cellpadding="0" cellspacing="1" bgcolor="#E7E7E7">
        <tr>
          <td  height="358" align="center" valign="top" bgcolor="#F4FCFF">
          <table width="154" border="0" cellpadding="0" cellspacing="0">


          </table></td>
        </tr>
      </table></td>
      <td width="10">&nbsp;</td>
      <td width="797" align="left" valign="top">
      <table width="797" border="0" cellpadding="0" cellspacing="1" bgcolor="#E7E7E7" >
		<tr>
		<th>教工号：</th>
		<th>密码：</th>
		<th>姓名：</th>
		<th>性别：</th>
		<th>院系：</th>
		<th>手机：</th>
		<th>QQ：</th>
		<th>邮箱：</th>
		</tr>
		<c:forEach var="c" items="${users}">
     	<tr>
     	<th>${c.user_id}</th>
     	<th>${c.user_password}</th>
     	<th>${c.user_name}</th>
     	<th>${c.user_sex}</th>
     	<th>${c.user_academy}</th>
     	<th>${c.user_phone}</th>
     	<th>${c.user_qq}</th>
     	<th>${c.user_email}</th>
     	</tr>
     	</c:forEach>
      </table></td>
    </tr>
  </table>
  <table width="990" height="5" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td></td>
    </tr>
  </table>
${sessionScope.user.user_name}

   
<jsp:include page="../bottom.jsp"></jsp:include>
  </body>
</html>
