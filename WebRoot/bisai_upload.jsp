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
<jsp:include page="top.jsp"></jsp:include> 
<table width="990" border="0" cellspacing="0" cellpadding="0">
			<tr>
      <td width="183" height="121" align="left" valign="top">
      <jsp:include page="bisai_middle.jsp"></jsp:include>
      </td>
				<td width="10">&nbsp;</td>
      <td width="797" align="left" valign="top"><table width="797" border="0" cellpadding="0" cellspacing="1" bgcolor="#E7E7E7">
        <tr>
          <td width="797" height="29" background="images/nav_lan.jpg">&nbsp;<span class="bigwritetitle">上传说明</span></td>
        </tr>
        <!-- -------------------------------------------------------------- -->
         <tr>
          <td height="51" align="center" valign="middle" bgcolor="#FFFFFF" class="bigredtitle">微课教学比赛作品上传说明</td>
        </tr>
        <tr>
          <td height="297" align="left" valign="top" bgcolor="#FFFFFF" class="BBS_content">            　　
            本次“微课”视频上传支持本地转码后上传和直接在线上传两种方式，支持的格式有mp4、rmvb、mpg、avi、wmv。微课视频录制要求详见“<a href="bisai_vodeo.jsp" class="blue">视频要求</a>”<br />
            <br />
            　　
            <strong>1.本地转码后上传（推荐）</strong><br />
            <br />
            　　
            <a href="down.jsp" class="red">[下载视频转码工具</a>] 使用本网提供的视频转码工具，将您拍摄好的微视频转码后，从个人中心的“我的作品”栏目中进行上传。<br />
            <br />
            　　
            <strong>2.直接发布上传</strong><br />
            <br />
            　　
            将您拍摄好的作品直接从个人中心的“我的作品”栏目中进行上传。由于上传资源较多，服务器云端转码需要排队等待，所以上传后需要一定时间后才可以在线播放。<br />
            <br />
　　
            <strong>内容审查说明</strong><br />
            <br />
　　
            为了保障对外公布作品的合法性，上传的视频及相关资源均需要等待审核后才可以在“作品展示”中呈现，请您上传后耐心等待作品审核，相关情况可以随时关注个人中心的“进度跟踪”。</td>
        </tr>
        <tr>
          <td height="140" align="left" valign="top" bgcolor="#FFFFFF" class="BBS_content"><p><span class="error_div">说明：如果直接上传原始视频到服务器进行“服务器云端转码”或在本地使用“视频转码工具”直接转码为F4V出现丢帧，丢音频，画面失真等一切不良现象，请这样处理：</span><br />
          </p>
            <p>1.先使用“<a href="down.jsp" class="red">下载中心</a>”的“<a href="http://dl.pconline.com.cn/download/51244-1.html" class="red">格式工厂</a>”转成wmv（无论什么格式都再转一次wmv）；<br />
              2.再使用“<a href="down.jsp" class="red">下载中心</a>”的“<a href="files/tof4v.zip" class="red">视频转码工具</a>”转码为F4V；<br />
              3.直接在个人中心，“上传比赛视频”中上传转码好的F4V文件。<br />
  <font color="red">提示：<br />
  1.请不要使用任何第三方软件转码F4V，第三方转码的F4V均会出现无法网络播放、无法快进快退、无法加速缓存等问题。<br />
  2.网站转码支持MP4格式视频，但由于MP4本身属于压缩格式，再进行二次转码为F4V等格式时会有明显的损伤感，无法保障视频的清晰度，所以推荐在视频录制和编辑导出时，保存为WMV格式，且相关参数都保存最高，以便再转码时有良好的视频源。</font><br />
            </p></td>
        </tr>
        
         
         
         
         
        <!-- -------------------------------------------------------------- -->  
      </table></td>
    </tr>
  </table>
  <table width="990" height="5" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td></td>
    </tr>
  </table>

   
<jsp:include page="bottom.jsp"></jsp:include>
  </body>
</html>
