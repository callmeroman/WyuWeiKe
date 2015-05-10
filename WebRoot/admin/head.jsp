<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>五邑大学微课教学专题网后台管理中心</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>css/Style.css">
  </head>
  
<!--   <script type="text/javascript"> -->
<!--   function hidden(){ -->
<!--   $("#hidden:visible").hide(); -->
<!--   } -->
<!--   </script> -->
  
  <body>
   <center>
		<!-- -------------------1.top图片---------------------- -->
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td><img src="images/top2.jpg" width="100%" height="16%" /></td>
			</tr>
		</table>

		<!-- -----------------2.菜单------------------------- -->
		<table width="100%" border="0" cellpadding="0" cellspacing="0"
			background="images/nav_bg.jpg">
			<tr>
				<td align="center"><table width="100%" border="0"
						cellspacing="0" cellpadding="0">
						<tr>
							<td width="92" align="center" ><a
								href="admin/welcome.jsp" class="white" target="main">添加公告</a></td>
							<td width="3" align="center"><img src="images/nav_shu.jpg"
								width="3" height="40" /></td>

							<td width="92" align="center"><a href="userservlet?method=findAllUser"
								class="white" target="main">用户管理</a></td>
							<td width="3" align="center"><img src="images/nav_shu.jpg"
								width="3" height="40" /></td>

							<td width="92" align="center"><a href="admin/query.jsp"
								class="white" target="main">用户搜索</a></td>
							<td width="3" align="center"><img src="images/nav_shu.jpg"
								width="3" height="40" /></td>

							<td width="92" align="center"><a href="admin/media_list.jsp"
								class="white" target="main">作品管理</a></td>
							<td width="3" align="center"><img src="images/nav_shu.jpg"
								width="3" height="40" /></td>
							<td width="92" align="center"><a href="user/mycourse.jsp"
								class="white" target="main">作品搜索</a></td>
							<td width="3" align="center"><img src="images/nav_shu.jpg"
								width="3" height="40" /></td>
							<td width="92" align="center"><a href="bbs.jsp"
								class="white" target="main">查看留言</a></td>
							<td width="3" align="center"><img src="images/nav_shu.jpg"
								width="3" height="40" /></td>
							<td width="92" align="center"><a href="user/mycourse.jsp"
								class="white" target="main">退出</a></td>
							<td width="3" align="center"><img src="images/nav_shu.jpg"
								width="3" height="40" /></td>
						</tr>
					</table></td>
			</tr>
		</table>
		</center>
  </body>
</html>
