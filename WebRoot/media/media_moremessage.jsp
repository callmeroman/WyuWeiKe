<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
System.out.println("request.getParameter('media_name'))="+request.getParameter("media_name"));
System.out.println("request.getAttribute('media_name'))="+request.getAttribute("media_name"));
System.out.println("request.getAttribute('savemediamessage')="+request.getAttribute("savemediamessage"));
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'moremessage.jsp' starting page</title>
    
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
 <%
String message="";
String message2 =(String)request.getAttribute("savemediamessage");
if(message2!=null){
message=message2;
}

String moremessage="";//赋值为空，第一次打开页面无显示，否则显示null；
	String msg=(String)request.getAttribute("media_name");
	if(msg!=null){
	moremessage=msg;
	}
 %>
<!-- ----------------------------------------------- -->
<form name="formmediamessage_up"  action="mediamessageupload"  method="post" >
	<table >
		<tr><font color="red" ><%=message %></font></tr>
		<tr>
			<td><span>视频标题：</span>&nbsp;&nbsp;&nbsp;&nbsp;<font color="red" > <%=moremessage %></font></td>
		</tr>
		<tr>
			<td>
				亲爱的，<input type="text" value="${sessionScope.user.user_id }" disabled="disabled"/>
			</td>
		</tr>
		<tr>
			<td><span>课程性质：</span> 
				<select name="media_native" id="media_native">
					<option value="选修">选修</option>
					<option value="必修">必修</option>
				</select>
			</td>
		</tr>
		<tr>
			<td><span>参赛方式：</span> 
				<select name="media_way" id="media_way">
					<option value="个人参赛">个人参赛</option>
					<option value="学院参赛">学院参赛</option>
				</select></td>
		</tr>
		<tr>
			<td><span>简介：</span></td>
		</tr>
		<tr>
			<td><textarea rows="10" cols="30" name="media_describe"></textarea>
						</td>
		</tr>
		<tr>
			<td height="52" colspan="4" align="center">
			<label><input name="Submit" type="submit" class="bluebuttom" value="提交信息" /></label>
			</td>

		</tr>
	</table>
</form>
</center>
  </body>
</html>
