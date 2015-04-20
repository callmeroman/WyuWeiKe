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
<jsp:include page="../top.jsp"></jsp:include> 

<table width="990" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="183" height="121" align="left" valign="top"><table width="183" border="0" cellpadding="0" cellspacing="1" bgcolor="#E7E7E7">
        <tr>
          <td  height="358" align="center" valign="top" bgcolor="#F4FCFF"><table width="154" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" valign="middle">&nbsp;</td>
            </tr>
            <tr>
              <td width="154" align="center" valign="middle" class="leftkuang">
              <div style="line-height: 20px">
              <a href="mycourse.jsp" class="red"><strong>个人信息</strong></br>
              <a href="/user/zuoping.jsp" class="blue">我的作品</a></br>
              <a href="/user/zuoping2.jsp" class="blue">已上传作品</a></br>
              <a href="/user/upload.jsp" class="blue">马上上传</a></br>
              <a href="/user/changepassword.jsp" class="blue">修改密码</a></br>
              <a href="exit.html" class="blue" onclick="">退出登录</a></br>
              <a href="help.html" class="blue">帮助</a></br>
              </div></td>
          </table></td>
        </tr>
      </table></td>
      <td width="10">&nbsp;</td>
      <td width="797" align="left" valign="top"><table width="797" border="0" cellpadding="0" cellspacing="1" bgcolor="#E7E7E7">
          
          
          
          
          
          
          
          
          
          
      </table></td>
    </tr>
  </table>
  <table width="990" height="5" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td></td>
    </tr>
  </table>


   
<jsp:include page="../bottom.jsp"></jsp:include>
  </body>
</html>
