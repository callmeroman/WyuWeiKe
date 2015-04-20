<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	System.out.println("login.jsp");
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
	<!-- ------------------------登录失败提示--------------------------- -->
	<%
	String message="";//赋值为空，第一次打开页面无显示，否则显示null；
	String msg=(String)request.getAttribute("errormessage");
	if(msg!=null){
	message=msg;
	}
	 %>
<font color="red"><b><%=message %></b></font>
<!-- --------------------------------------------------------------- -->
	<form  id="form1" name="form1" method="post" action="login">
		<table width="580" border="0" cellpadding="0" cellspacing="3"
						bgcolor="#139DC1">
			<tr>
				<td width="574" align="center" bgcolor="#FFFFFF">
					<table width="348" border="0" cellpadding="0" cellspacing="5">
						<tr>
							<td width="124" height="32" align="right"><span
											class="error_div">*</span>教工号：</td>
							<td width="209" align="left"><input name="user_id"
											type="text" id="user_id" tabindex="1" size="20"
											maxlength="30" onblur="submitForm()" />
										</td>
						</tr>
						<tr>
							<td height="34" align="right"><span class="error_div">*</span>用户密码：</td>
							<td align="left"><input name="user_password"
											type="password" id="user_password" tabindex="2" size="20"
											maxlength="20" />
										</td>
						</tr>
<!-- 									<tr> -->
<!-- 										<td height="34" align="center"><span class="error_div">*</span>7天免登录：<input -->
<!-- 											type="checkbox" name="autologin" align="right" /> -->
<!-- 										</td> -->
<!-- 									</tr> -->
									<!--  <tr>
                  <td height="34" align="right"><span class="error_div">*</span>验证码：</td>
                  <td align="left"><input name="CheckCode" id="CheckCode" tabindex="3" type="text"  onMouseOver="this.select()" size=6>
				  
                      <strong>2816</strong></td>
                </tr>-->

									<tr>
										<td height="53" colspan="2" align="center"><label>
												<input id="userlogin" name="userlogin" type="submit"
												class="bluebuttom" value="登  录" tabindex="4" /> </label> 
												<label id="regname"> &nbsp; 
											<input name="Submit" type="button" class="bluebuttom" value="注  册" tabindex="5"
												onclick="register.jsp" /> </label> 
<!-- 												<label id="passname"> -->
<!-- 												&nbsp; <input name="Submit" type="button" class="bluebuttom" -->
<!-- 												value="找回密码" tabindex="6" onclick="" /> </label></td> -->
									</tr>
								</table></td>
						</tr>
					</table>
				</form>
	</center>
	<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>
