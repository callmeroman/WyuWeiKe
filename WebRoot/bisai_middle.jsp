<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
<table  border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="183" height="121" align="left" valign="top"><table width="183" border="0" cellpadding="0" cellspacing="1" bgcolor="#E7E7E7">
        <tr>
          <td width="181" bgcolor="#FFFFFF"><img src="images/cs.jpg" width="181" height="48" /></td>
        </tr>
        <tr>
          <td height="358" align="center" valign="top" bgcolor="#F4FCFF"><table width="154" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td align="center" valign="middle">&nbsp;</td>
            </tr>
            <tr>
              <td width="154" align="center" valign="middle" class="leftkuang"><a href="bisai.jsp" class="red"><strong>比赛方案</strong></a></td>
            </tr>
            <tr>
              <td width="154" align="center" valign="middle" class="leftkuang"><a href="bisai_guize.jsp" class="blue">评审规则</a></td>
            </tr>
            <tr>
              <td width="154" align="center" valign="middle" class="leftkuang"><a href="bisai_zuoping.jsp" class="blue">作品要求</a></td>
            </tr>
            <tr>
              <td width="154" align="center" valign="middle" class="leftkuang"><a href="bisai_video.jsp" class="blue">视频要求</a></td>
            </tr>
            <tr>
              <td width="154" align="center" valign="middle" class="leftkuang"><a href="bisai_upload.jsp" class="blue">上传说明</a></td>
            </tr>
            <tr>
              <td width="154" align="center" valign="middle" class="leftkuang"><a href="help.jsp" class="blue">常见问题</a></td>
            </tr>
          </table>
        </tr>
      </table></td>
    </tr>
  </table>
  </body>
</html>
