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
				<td width="797" align="left" valign="top"><table width="797"
						border="0" cellpadding="0" cellspacing="1" bgcolor="#E7E7E7">
						<tr>
							<td width="797" height="29" background="images/nav_lan.jpg">&nbsp;<span
								class="bigwritetitle">作品要求</span>
							</td>
						</tr>
						<!-- ------------------------------------------------------ -->
						<tr>
							<td height="51" align="center" valign="middle" bgcolor="#FFFFFF"
								class="bigredtitle">微课教学比赛作品要求</td>
						</tr>
						<tr>
							<td height="127" align="left" valign="top" bgcolor="#FFFFFF"
								class="BBS_content"><br />
								<p>
									“微课”是指以视频为主要载体记录教师围绕某个知识点或教学环节开展的简短、完整的教学活动。参赛教师自选一门高校课程，精心备课，充分合理运用各种现代教育技术手段及设备，设计课程，录制成时长在10-20分钟的微课视频，并配套提供教学设计文本、多媒体教学课件等辅助材料。</p>
								<br /> <br />
								<p>
									<span class="bigredtitle">1.教学视频要求</span>
								</p>
								<br />
								<p>
									图像清晰稳定、构图合理、声音清楚，能较全面真实反映教学情境，能充分展示教师良好教学风貌。视频片头应显示标题、作者和单位，主要教学环节有字幕提示。视频格式及上传要求详见“微课专题网”相关文档。</p>
								<br />
								<p>
									<span class="bigredtitle">2.多媒体教学课件要求</span>
								</p>
								<br />
								<p>
									多媒体教学课件限定为PPT格式。要求围绕教学目标，反映主要教学内容，与教学视频合理搭配，单独提交。其他与微课教学内容相关辅助材料如练习测试、教学评价、动画、视频、习题、图片等多媒体素材等材料也应单独提交。</p>
								<br />
								<p>
									<span class="bigredtitle">3.教学设计要求</span>
								</p>
								<br />
								<p>
									教学设计应反映教师教学思想、课程设计思路和教学特色，包括教学背景、教学目标、教学方法和教学总结等方面内容，并在开头注明讲课内容所属学科、专业、课程及适用对象等信息。文件格式：word。</p>
								<br /></td>
						</tr>
						<!-- ------------------------------------------------------ -->
					</table>
				</td>
			</tr>
		</table>
<jsp:include page="bottom.jsp"></jsp:include>
  </body>
</html>
