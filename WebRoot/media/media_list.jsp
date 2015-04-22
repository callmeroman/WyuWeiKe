<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	System.out.println("调用media_list.jsp");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'media_list.jsp' starting page</title>

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
	<table width="150"  border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td width="144" height="22" align="left"
				background="images/nav_lan.jpg">
				<p>参赛作品展示</p>
			</td>
		</tr>
		<tr>
		
<c:forEach var="c" items="${medias}">
			<td width="186" align="left" valign="middle">
				<!--视频开始-->
				<table width="170" border="0" cellpadding="3" cellspacing="0">
					<tr>
						<td colspan="2" align="center" valign="middle" class="vodkuang">

							<table width="150" height="115" border="0" cellspacing="0"
								cellpadding="0">
								<tr>
									<td style="background-image:url('<%=basePath%>files/test.jpg'); background-size:149px 114px;background-attachment: scroll;background-repeat: no-repeat;background-position: center center;"
										background="<%=basePath%>files/test.jpg">
										<a href="media/media_player.jsp?media_path=<%=basePath%>files/test.wmv" title="${c.media_name}">
										<!--在 background上添加图片-->
<!-- 										<img src="images/bofang_f.gif" border="0" width="149" height="114" -->
<!-- 											align="absmiddle" /> -->
									</a>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="left" valign="middle">
							<img src="images/bo.jpg" width="15" height="15" align="absmiddle" />
							<a href="media/media_player.jsp?media_path=<%=basePath%>files/test.wmv" title="${c.media_name}">${c.media_name}</a>
						</td>
					</tr>
<!-- 					<tr> -->
<!-- 						<td align="left" valign="middle">院系：合肥通用职业技术学院</td> -->
<!-- 					</tr> -->
<!-- 					<tr> -->
<!-- 						<td align="left" valign="middle">作者：储亭玉</td> -->
<!-- 					</tr> -->
				</table>
				 <!--视频结束-->
			</td>
</c:forEach>
			
		</tr>
	</table>
</body>
</html>
