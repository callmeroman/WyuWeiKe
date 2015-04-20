<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>五邑大学微课教学比赛</title>
    
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
<jsp:include page="top.jsp"></jsp:include> 

<br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
    <p style="font-size:90px"><marquee width="100%" height="50%"  direction="center" behavior="alternate" 
scrollamount="6" scrolldelay="88">建设中。。。敬请期待。。。。</marquee></p>
<br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>

   
<jsp:include page="bottom.jsp"></jsp:include>
  </body>
</html>
