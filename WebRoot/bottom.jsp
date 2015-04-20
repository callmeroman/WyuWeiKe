<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<link rel="stylesheet" type="text/css" href="<%=basePath%>css/Style.css">
	<script type="text/javascript" src="<%=basePath%>js/lunboimg.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/jquery-1.2.6.js"></script> 
	<script type="text/javascript" src="<%=basePath%>js/tween.js"></script> 





  </head>
  
  <body>
   <center>
   
   <table width="990" height="5" border="0" cellpadding="0"
					cellspacing="0">
					<tr>
						<td></td>
					</tr>
				</table>
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					background="images/nav_bg.jpg">
					<tr>
						<td width="3" align="left"><img src="images/nav_bg.jpg"
							width="3" height="40" /></td>
						<td width="100%" align="center" class="writefont12"><a
							href="bisai.jsp" class="white">赛事指南</a> | <a href="help.jsp"
							class="white">相关问题</a> | <a href="reg_agreement.html"
							class="white">网站申明</a>| <a href="down.jsp" class="white">下载中心</a>|<a
							href="<%=basePath%>user/register.jsp" class="white">注册</a>| <a href="<%=basePath%>user/login.jsp"
							class="white">登录</a></td>
					</tr>
				</table>

				<table width="100%" height="133" border="0" cellpadding="0"
					cellspacing="0">
					<tr>
						<td align="center" class="list1">Copyright(c)
							2013：五邑大学教师教学发展中心版权所有<br /> 地址：广东省江门市蓬江区东成村22号 邮编：529020<br />
							电话/传真：0750-3296077<br /> 邮箱：wyuchemzzm@126.com<br />
							办公地点：五邑大学南主楼五楼541<br />
						</td>
					</tr>
				</table>
   
   </center>
   
   
  </body>
</html>
