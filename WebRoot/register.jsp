<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
	<center>
	<div id=divProcessing
		style="width:300px;height:30px;position:absolute;left:400px;top:400px;display:none">
		<table border=0 cellpadding=0 cellspacing=1 bgcolor="#000000"
			width="100%" height="100%">
			<tr>
				<td bgcolor=green><marquee  behavior="alternate"
						scrollamount="5">
						<font color=#FFFFFF>...您的注册信息正在提交中...请稍等...</font>
					</marquee>
				</td>
			</tr>
		</table>
	</div>


	<table width="990" height="5" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td></td>
		</tr>
	</table>
	<table width="990" height="213" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td width="990" height="213" valign="top"><table width="990"
					border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="89" height="28" align="center"
							background="images/nav_lan.jpg" class="bigwritetitle">选手注册</td>
						<td width="901" align="right" valign="bottom">&nbsp;</td>
					</tr>
				</table>
			<form id="form1" name="form1" method="post" action="<%=path %>/register" >
				<table width="990" border="0" cellpadding="0" cellspacing="1"
					bgcolor="#E7E7E7">
						<tr>
							<td height="196" align="center" valign="top" bgcolor="#FFFFFF">


								<table width="960" border="0" cellpadding="0" cellspacing="1"
									bgcolor="#D7DAE1">
									<tr>
										<td width="960" align="center" bgcolor="#F6F6F6"><table
												width="633" height="88" border="0" cellpadding="0"
												cellspacing="5">
												
												<tr>
													<td align="left"><span class="error_div">*</span>教工号：</td>
													<td align="left"><input name="user_id" type="text"
														id="text" size="25" maxlength="20" />
													</td>
													<td align="left" class="bluefont12">请填写正确的教工号。
														<div id="user_id_error"></div>
													</td>
												</tr>
												<tr>
													<td align="left"><span class="error_div">*</span>用户密码：</td>
													<td align="left"><input name="user_password"
														type="password" id="user_password" size="25" maxlength="20" />
													</td>
													<td align="left" class="bluefont12">密码长度必须在6~16位之间。
														<div id="user_password_error"></div>
													</td>
												</tr>
												<tr>
													<td align="left"><span class="error_div">*</span>密码确认：</td>
													<td align="left"><input name="user_password2"
														type="password" id="user_password2" size="25" maxlength="20" />
													</td>
													<td align="left" class="bluefont12">请再次输入上面的密码。
														<div id="user_password2_error"></div>
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
								<table width="960" border="0" cellpadding="0" cellspacing="1"
									bgcolor="#D7DAE1">
									<tr>
										<td width="960" align="center" bgcolor="#F6F6F6"><table
												width="634" height="196" border="0" cellpadding="0"
												cellspacing="5">
												<tr>
													<td width="87" align="left"><span class="error_div">*</span>姓名：</td>
													<td colspan="2" align="left"><input name="user_name"
														type="text" id="user_name" size="25" maxlength="15" />
													</td>
													<td width="324" align="left" class="bluefont12">
														请填写真实姓名，必填项，认证使用。
														<div id="user_name_error"></div>
													</td>
												</tr>
												<tr>
													<td align="left"><span class="error_div">*</span>性别：</td>
													<td colspan="2" align="left"><input type="radio"
														name="user_sex" value="男" checked="checked" /> 男 <input
														type="radio" name="user_sex" value="女" /> 女</td>
													<td align="left" class="bluefont12">请选择您的性别。
														<div id="user_sex_error"></div>
													</td>
												</tr>
												<tr>
													<td align="left"><span class="error_div">*</span>院系：</td><td><input
														name="user_academy" type="text" id="user_academy" size="20"
														maxlength="15" />
														<div id="user_academy_error"></div></td>
												</tr>
												
												<tr>
													<td align="left"><span class="error_div">*</span>手机：</td>
													<td colspan="2" align="left"><input name="user_phone"
														type="text" id="user_phone" size="25" maxlength="11"
														onblur="testphone()" />
													</td>
													<td align="left" class="bluefont12">
														请填写您的手机，以方便与您取得联系。
														<div id="user_phonemsg"></div>
													</td>
												</tr>
												
												<tr>
													<td align="left"><span class="error_div">*</span>QQ：</td>
													<td colspan="2" align="left"><input name="user_qq"
														type="text" id="user_qq" size="25" maxlength="20"
														onblur="" />
													</td>
													<td align="left" class="bluefont12">
														请填写您的QQ，以方便与您取得联系。
														<div id="user_qqmsg"></div>
													</td>
												</tr>
												<tr>
													<td align="left"><span class="error_div">*</span>邮箱：</td>
													<td colspan="2" align="left"><input name="user_email"
														type="text" id="user_email" size="25" maxlength="25"
														onblur="" />
													</td>
													<td align="left" class="bluefont12">
														请填写您的常用电子邮箱，以方便与您取得联系。
														<div id="user_emailmsg"></div>
													</td>
												</tr>
												<tr>
													<td align="left"><span class="error_div">*</span>验证码：</td>
													<td width="65" align="left"><input name="CheckCode"
														type="text" id="CheckCode" size="10" maxlength="18" />
													</td>
													<td width="133" align="left"><strong>9186 </strong></td>
													<td align="left" class="bluefont12">请填写注册验证码。
														<div id="CheckCode_error"></div>
													</td>
												</tr>
												<tr>
													<td colspan="4" align="left"><input name="isYes"
														type="checkbox" checked> 已经阅读并同意用户协议 《<a
														href="" target="_blank">阅读用户协议</a>》
														<div id="isYes_error"></div>
													</td>
												</tr>
												<tr>
													<td height="52" colspan="4" align="center"><label>
															<input name="Submit" type="submit" class="bluebuttom"
															value="提交注册信息" /> </label> <label> &nbsp; <a
															href="login.jsp">直接登陆</a> </label></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
								</td>
						</tr>
				</table>
			</td>
		</tr>
	</table>
					</form>
</center>


	<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>
