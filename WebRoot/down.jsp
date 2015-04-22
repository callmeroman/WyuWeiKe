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
<table width="990" height="213" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td width="990" height="213" valign="top"><table width="990" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="120" height="30" align="center" background="images/nav_lan.jpg" class="bigwritetitle">下载中心</td>
            <td width="870" align="right" valign="bottom"><a href="#"></a>&nbsp;</td>
          </tr>
        </table>
          <table width="990" height="2" border="0" cellpadding="0" cellspacing="0" bgcolor="#1088AD">
            <tr>
              <td></td>
            </tr>
          </table>
        <table width="990" border="0" cellpadding="0" cellspacing="1" bgcolor="#E7E7E7">
                 
            <tr>
              <td height="196" align="center" valign="top" bgcolor="#FFFFFF">
			  

                   <table width="960" height="10" border="0" cellpadding="0" cellspacing="0">
                     <tr>
                       <td></td>
                     </tr>
                   </table>
                   <table width="960" border="0" cellpadding="10" cellspacing="0">
                  <tr>
                    <td align="left" valign="top">
                      <table width="940" border="0" cellpadding="5" cellspacing="1" bgcolor="#E7E7E7">
                        <tr>
                          <td align="right" bgcolor="#FFFFFF">特殊说明：</td>
                          <td align="left" bgcolor="#FFFFFF" class="diaocha2010"><p>说明：如果直接上传原始视频到服务器进行“服务器云端转码”或在本地使用“视频转码工具”直接转码为F4V出现丢帧，丢音频，画面失真等一切不良现象，请这样处理：<br />
                          </p>
                            <p>1.先使用下面的“格式工厂”转成wmv（无论什么格式都再转一次wmv）；<br />
                              2.再使用“视频转码工具”转码为F4V；<br />
                            3.直接在个人中心，“上传比赛视频”中上传转码好的F4V文件。</p>
                            <p>&nbsp;</p>
                            <p class="style_red"><strong>提示：</strong><br />
                              <font color="red">1.请不要使用任何第三方软件转码F4V，第三方转码的F4V均会出现无法网络播放、无法快进快退、无法加速缓存等问题。<br />
                              2.网站转码支持MP4格式视频，但由于MP4本身属于压缩格式，再进行二次转码为F4V等格式时会有明显的损伤感，无法保障视频的清晰度，所以推荐在视频录制和编辑导出时，保存为WMV格式，且相关参数都保存最高，以便再转码时有良好的视频源。</font></p></td>
                        </tr>
                        <tr>
                          <td align="right" bgcolor="#FFFFFF">格式工厂：</td>
                          <td align="left" bgcolor="#FFFFFF"><a href="http://www.pcfreetime.com/CN/index.html"><img src="images/xiazaibuttom.gif" width="96" height="28" border="0" /></a></td>
                        </tr>
                        <tr>
                          <td width="206" align="right" bgcolor="#FFFFFF">视频转码工具：</td>
                          <td width="711" align="left" bgcolor="#FFFFFF"><a href="files/tof4v.zip"><img src="images/xiazaibuttom.gif" width="96" height="28" border="0" /></a></td>
                        </tr>
                        
                        <tr>
                          <td align="right" bgcolor="#FFFFFF">上传组件（Silverlight）：</td>
                          <td align="left" bgcolor="#FFFFFF"><a href="http://www.microsoft.com/silverlight/"><img src="images/xiazaibuttom.gif" width="96" height="28" border="0" /></a>(微软直接下载)<br><a href="http://rj.baidu.com/search/index/?kw=Silverlight"><img src="images/xiazaibuttom.gif" width="96" height="28" border="0" /></a>(百度镜像下载)<br>说明：如果“微软直接下载”无法使用，可以使用“百度镜像下载”：文件完全一样，无需重复下载。</td>
                        </tr>
                        <tr>
                          <td align="right" bgcolor="#FFFFFF">Framework2.0：</td>
                          <td align="left" bgcolor="#FFFFFF"><a href="files/Framework2.0.exe"><img src="images/xiazaibuttom.gif" width="96" height="28" border="0" /><br />
                          说明：如果“视频转码工具”无法使用，提示需要安装Framework可以下载安装，系统一般都自带了，无需单独安装本文件。</a></td>
                        </tr>
                      </table>
                    </td>
                  </tr>
                </table>
</td>
            </tr>
                 
        </table></td>
    </tr>
  </table>

   
<jsp:include page="bottom.jsp"></jsp:include>
  </body>
</html>
