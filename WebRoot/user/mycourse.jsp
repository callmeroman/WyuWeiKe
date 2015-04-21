<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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

  </head>
 <frameset rows="260,*"  frameborder="NO" border="0" framespacing="0">
	<frame src="top.jsp" noresize="noresize" frameborder="0" name="topFrame" scrolling="no" marginwidth="0" marginheight="0"  />
  <frameset cols="200,*"  rows="700,*" id="frame">
	<frame src="user/left.jsp" name="leftFrame" noresize="noresize" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" />
	<frame src="user/usermessage.jsp" name="main" marginwidth="0" marginheight="0" frameborder="0" scrolling="auto" />
  </frameset>
<noframes>
  <body></body>
    </noframes>
    </frameset>
</html>
