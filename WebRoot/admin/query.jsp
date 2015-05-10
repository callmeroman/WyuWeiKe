<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>高级搜索</title>
    
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
<h3 >高级搜索</h3>
<form action="<c:url value='/userservlet'/>" method="get">
	<input type="hidden" name="method" value="queryUser"/>
<table width="634"  height="196" border="0" cellpadding="0"
		cellspacing="5">
	<tr>
		<td ><span class="error_div">*</span>教工号：</td>
		<td ><input name="user_id" type="text"
			id="text" size="25" maxlength="20" />
		</td>
	</tr>
	<tr>
		<td width="87" ><span class="error_div">*</span>姓名：</td>
		<td colspan="2" ><input name="user_name"
			type="text" id="user_name" size="25" maxlength="15" />
		</td>
	</tr>
	<tr>
		<td ><span class="error_div">*</span>性别：</td>
		<td>
		<select name="user_sex" id="user_sex" >
		<option value="">不限</option>
		<option value="男" >男</option>
		<option value="女" >女 </option>
		</select>
		</td>
	</tr>
	<tr>
		<td ><span class="error_div">*</span>院系：</td><td>
		<select name="user_academy" id="user_academy" >
		<option value="" >不限 </option>
		<option value="计算机学院" >计算机学院 </option>
		<option value="文学院" >文学院</option>
		<option value="政法学院" > 政法学院 </option>
		<option value="艺术设计学院" >艺术设计学院</option>
		<option value="土木建筑学院" > 土木建筑学院 </option>
		<option value="经济管理学院" >经济管理学院</option>
		<option value="外国语学院 " > 外国语学院 </option>
		<option value="数学与计算科学学院" >数学与计算科学学院</option>
		<option value="应用物理与材料学院" >应用物理与材料学院</option>
		<option value="信息工程学院" >信息工程学院</option>
		<option value="机电工程学院" >机电工程学院</option>
		<option value="化学与环境工程学院" >化学与环境工程学院</option>
		<option value="纺织服装学院" >纺织服装学院</option>
		<option value="轨道交通学院" >轨道交通学院</option>
		<option value="体育部" >体育部</option>
		<option value="思想政治理论教学部" >思想政治理论教学部</option>
		</select>
		</td>
	</tr>
	<tr>
		<td ><span class="error_div">*</span>手机：</td>
		<td colspan="2" ><input name="user_phone"
			type="text" id="user_phone" size="25" maxlength="11"
			onblur="testphone()" />
		</td>
	</tr>
	<tr>
		<td ><span class="error_div">*</span>QQ：</td>
		<td colspan="2" ><input name="user_qq"
			type="text" id="user_qq" size="25" maxlength="20"
			onblur="" />
		</td>
	</tr>
	<tr>
		<td ><span class="error_div">*</span>邮箱：</td>
		<td colspan="2" ><input name="user_email"
			type="text" id="user_email" size="25" maxlength="25"
			onblur="" />
		</td>
	</tr>
	<tr>
		<td height="52" colspan="4"><label>
				<input name="Submit" type="submit" class="bluebuttom"
				value="搜索" /> </label> <label> &nbsp; <input type="reset" value="重置"/> </label></td>
	</tr>
</table>
</form>
</center>
  </body>
</html>
