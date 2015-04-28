<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="../js/prototype.lite.js" type="text/javascript"></script>
<script src="../js/moo.fx.js" type="text/javascript"></script>
<script src="../js/moo.fx.pack.js" type="text/javascript"></script>
<style>
body {
	font:12px Arial, Helvetica, sans-serif;
	color: #000;
	background-color: #EEF2FB;
	margin: 0px;
}
</style>
<script type="text/javascript">
function getusermessage(){



}



</script>

</head>
  
<input type="hidden" id=sess name="hiddenField" value=<%=session.getAttribute("user")%>>
  
  <body>
 <table width="154" border="0" cellpadding="0" cellspacing="0">
		<tr>
			<td align="center" valign="middle">&nbsp;</td>
		</tr>
		<tr>
			<td width="154" align="center" valign="middle" class="leftkuang">
				<div style="line-height: 20px">
				<!-- --------------------------------------------- -->
				&nbsp;&nbsp;<a href="<%=basePath%>login.jsp" target="_top"><c:out value="${sessionScope.user.user_name}" default="请登录" /></a>，欢迎您
				</br></br>
				<!-- --------------------------------------------- -->
				<!-- showuser;JSESSIONID=<%=session.getId()%>向服务器提交session中的数据 -->
				<!-- response.encodeURL("showuser")向所有包含该路径传值 -->
					<a href="showuser?user_id=${sessionScope.user.user_id}" class="red" target="main"><strong>个人信息</strong></a></br></br> 
					<a href="showusermedia?user_id=${sessionScope.user.user_id}" class="blue" target="main">我的作品</a></br> </br>
					<a href="media/media_upload.jsp" class="blue" target="main">马上上传</a></br> </br>
					<a href="user/changepassword.jsp" class="blue" target="main">修改密码</a></br> </br>
					<a href="exit.jsp" class="blue"  target="main" onclick="">退出登录</a></br> </br>
					<a href="help.jsp" class="blue" >帮助</a></br></br>
				</div>
			</td>
		</tr>
	</table>
  </body>
</html>
