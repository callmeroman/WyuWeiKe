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
    
    <title>My JSP 'updateusermessage.jsp' starting page</title>
    
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
<form id="form" name="form" method="post" action="<%=path %>/updateuser" > 
     <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#E7E7E7">
		<tr>
			<td width="960" align="center" bgcolor="#F6F6F6">
				<table width="633" height="88" border="0" cellpadding="0" cellspacing="5">
					<tr>
						<td align="left"><span class="error_div">*</span>教工号：</td>
						<td align="left"><input name="user_id" type="text" id="text" size="25" maxlength="20"  value="${sessionScope.user.user_id}"/></td>
					</tr>
					<tr>
						<td align="left"><span class="error_div">*</span>用户密码：</td>
						<td align="left"><input name="user_password" type="text" id="user_password" size="25" maxlength="20" value="${sessionScope.user.user_password}"/></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td width="960" align="center" bgcolor="#F6F6F6">
				<table width="634" height="196" border="0" cellpadding="0" cellspacing="5">
					<tr>
						<td width="87" align="left"><span class="error_div">*</span>姓名：</td>
						<td colspan="2" align="left"><input name="user_name" type="text" id="user_name" size="25" maxlength="15" value="${sessionScope.user.user_name}"/>
													</td>
					</tr>
					<tr>
						<td align="left"><span class="error_div">*</span>性别：</td>
						<td colspan="2" align="left"><input type="radio"
														name="user_sex" value="男" checked="checked" /> 男 <input
														type="radio" name="user_sex" value="女" /> 女</td>
					</tr>
					<tr>
						<td align="left"><span class="error_div">*</span>院系：</td>
						<td><input name="user_academy" type="text" id="user_academy" size="20"
														maxlength="15" value="${sessionScope.user.user_academy}"/>
														<div id="user_academy_error"></div></td>
												</tr>
					<tr>
						<td align="left"><span class="error_div">*</span>手机：</td>
						<td colspan="2" align="left"><input name="user_phone"
														type="text" id="user_phone" size="25" maxlength="11"
														onblur="testphone()" value="${sessionScope.user.user_phone}"/>
													</td>
					</tr>
					<tr>
						<td align="left"><span class="error_div">*</span>QQ：</td>
						<td colspan="2" align="left"><input name="user_qq"
														type="text" id="user_qq" size="25" maxlength="20"
														onblur="" value="${sessionScope.user.user_qq}"/>
													</td>
					</tr>
					<tr>
						<td align="left"><span class="error_div">*</span>邮箱：</td>
						<td colspan="2" align="left"><input name="user_email"
														type="text" id="user_email" size="25" maxlength="25"
														onblur="" value="${sessionScope.user.user_email}"/>
													</td>
					</tr>
					<tr>
						<td height="52" colspan="4" align="center">
							<label><input name="Submit" type="submit" class="bluebuttom" value="提  交" /> </label> 
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</form>
</center>
  </body>
</html>
