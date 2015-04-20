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
								href="index.jsp" class="white" target="_top">首页</a></td>
							<td width="3" align="center"><img src="images/nav_shu.jpg"
								width="3" height="40" /></td>

							<td width="92" align="center"><a href="bisai.jsp"
								class="white" target="_top">比赛指南</a></td>
							<td width="3" align="center"><img src="images/nav_shu.jpg"
								width="3" height="40" /></td>

							<td width="92" align="center"><a href="gonggao.jsp"
								class="white" target="_top">赛事公告</a></td>
							<td width="3" align="center"><img src="images/nav_shu.jpg"
								width="3" height="40" /></td>

							<td width="92" align="center"><a href="zuopingshow.jsp"
								class="white" target="_top">作品展示</a></td>
							<td width="3" align="center"><img src="images/nav_shu.jpg"
								width="3" height="40" /></td>
							<td width="92" align="center"><a href="user/mycourse.jsp"
								class="white" target="_top">用户中心</a></td>
							<td width="3" align="center"><img src="images/nav_shu.jpg"
								width="3" height="40" /></td>
							<td width="92" align="center"><a href="bbs.jsp"
								class="white" target="_top">交流评价</a></td>
							<td width="3" align="center"><img src="images/nav_shu.jpg"
								width="3" height="40" /></td>
							<td width="92" align="center"><a href="down.jsp"
								class="white" target="_top">下载中心</a></td>
							<td width="3" align="center"><img src="images/nav_shu.jpg"
								width="3" height="40" /></td>
							<td width="135" align="center" class="writefont12">
								<a id="hidden" href="register.jsp" class="white" target="_top">注册</a> |
								<a id="hidden" href="login.jsp" class="white" target="_top">登录</a>
							</td>
							<td width="3" align="center"><img src="images/nav_shu.jpg"
								width="3" height="40" /></td>
							<td width="92" align="center"><a href="help.jsp"
								class="white" target="_top">帮助</a></td>
						</tr>
					</table></td>
			</tr>
		</table>

		<!-- ---------------------3.滑动提示栏----------------------------- -->
		<table width="100%" border="0" cellpadding="0" cellspacing="0"
			background="images/nav_di.jpg">
			<tr>
				<td align="center"><table width="100%" border="0"
						cellspacing="0" cellpadding="0">
						<tr>
							<td width="3"><img src="images/nav_di.jpg" width="3" height="38" /></td>
							<td width="150" align="right"><span class="error_div"><strong>
							 
							提示：</strong></span></td>
							<td width="939" align="left">
							<marquee onMouseOver="this.stop()" onMouseOut="this.start()" direction="left" scrolldelay="4" scrollamount="5"> 
							<span class=style_red>·</span> <a href=target=_blank>建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。</a>
							</marquee>
							</td>
						</tr>
					</table></td>
			</tr>
		</table>
		</center>
  </body>
</html>
