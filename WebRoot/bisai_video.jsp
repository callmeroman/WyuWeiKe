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
								class="bigwritetitle">视频要求</span></td>
						</tr>
						<!-- ------------------------------------------------------ -->
						<tr>
							<td height="51" align="center" valign="middle" bgcolor="#FFFFFF"
								class="bigredtitle">微课教学比赛视频制作参考</td>
						</tr>
						<tr>
							<td height="127" align="left" valign="top" bgcolor="#FFFFFF"
								class="BBS_content"><p>
									根据全国高校微课教学比赛视频制作标准的需要，特制定比赛视频制作参考说明。主要包括视频的音视频录制、后期制作和视、音频文件压缩格式要求等基本技术规范。若采用桌面录制软件等方式进行录制，相关视频比例、采样和压缩要求参照本指导相关部分执行。本指导仅作为学校组织拍摄的技术参考，个人参赛选手可结合自身情况进行拍摄和制作。<br />
									<br /> <span class="bigredtitle">一、录制要求</span><br /> <br />

									<strong>（一）课程时长</strong><br /> <br />

									每门课程总时长5-15分钟以内。删除与教学无关的内容。<br /> <br /> <strong>（二）录制场地</strong><br />
									<br />

									录制场地可以是课堂、演播室或礼堂等场地。录制现场光线充足、环境安静、整洁，避免在镜头中出现有广告嫌疑或与课程无关的标识等内容。现场是否安排学生互动可根据录制需要自行决定。<br />
									<br /> <strong>（三）课程形式</strong><br /> <br /> 成片统一采用单一视频形式。<br />
									<br /> <strong>（四）录制方式及设备</strong><br /> <br />

									１.拍摄方式：根据课程内容，可采用多机位拍摄（2机位以上），机位设置应满足完整记录全部教学活动的要求。<br /> <br />

									２.录像设备：摄像机要求不低于专业级数字设备，在同一门课程中标清和高清设备不得混用，推荐使用高清数字设备。<br /> <br />

									３.录音设备：使用若干个专业级话筒，保证教师和学生发言的录音质量。<br /> <br />

									４.后期制作设备：使用相应的非线性编辑系统。<br /> <br /> <strong>（五）多媒体课件的制作及录制</strong><br />
									<br />

									教师在录制前应对授课过程中使用的多媒体课件（PPT、音视频、动画等）认真检查，确保内容无误，排版格式规范，版面简洁清晰，符合拍摄要求。<br />
									<br /> 在拍摄时应针对实际情况选择适当的拍摄方式，与后期制作统筹策划，确保成片中的多媒体演示及板书完整、清晰。<br />
									<br /> <span class="bigredtitle">二、后期制作要求</span><br /> <br />

									<strong>（一）片头</strong><br /> <br />

									片头不超过10秒，应包括:学校名称、单位、课程名称、主讲教师姓名、专业技术职务等信息。<br /> <br /> <strong>（二）技术指标</strong><br />
									<br /> 1.视频信号源<br /> <br />

									（1）稳定性：全片图像同步性能稳定，无失步现象，CTL同步控制信号必须连续：图像无抖动跳跃，色彩无突变，编辑点处图像稳定。<br />
									<br /> （2）信噪比：图像信噪比不低于55dB，无明显杂波。<br /> <br />

									（3）色调：白平衡正确，无明显偏色，多机拍摄的镜头衔接处无明显色差。<br /> <br />

									（4）视频电平：视频全讯号幅度为1Ⅴp-p，最大不超过1.1Ⅴp-p。其中，消隐电平为0V时，白电平幅度0.7Ⅴp-p，同步信号-0.3V，色同步信号幅度0.3Vp-p(以消隐线上下对称)，全片一致。<br />
									<br /> 2.音频信号源<br /> <br />

									（1）声道：中文内容音频信号记录于第1声道，音乐、音效、同期声记录于第2声道，若有其他文字解说记录于第3声道（如录音设备无第3声道,则录于第2声道）。<br />
									<br /> （2）电平指标：-2db—-8db声音应无明显失真、放音过冲、过弱。<br /> <br />

									（3）音频信噪比不低于48db。<br /> <br /> （4）声音和画面要求同步，无交流声或其他杂音等缺陷。<br />
									<br />

									（5）伴音清晰、饱满、圆润，无失真、噪声杂音干扰、音量忽大忽小现象。解说声与现场声无明显比例失调，解说声与背景音乐无明显比例失调。<br />
									<br /> <span class="bigredtitle">三、视、音频文件压缩格式要求</span><br />
									<br /> <strong>（一）视频压缩格式及技术参数</strong><br /> <br />

									1.视频压缩采用H.264格式编码。<br /> <br />

									2.视频码流率：动态码流的最高码率不高于2000Kbps，最低码率不得低于1024Kbps。<br /> <br />

									3.视频分辨率：<br /> <br />

									（1）前期采用标清4:3拍摄，请设定为640×480；前期采用标清16:9拍摄，请设定为1280×720；<br /> <br />

									（2）在同一课程中，各讲的视频分辨率应统一，不得标清和高清混用。<br /> <br /> 4.视频画幅宽高比：<br />
									<br /> （1）分辨率设定为640×480，请选定4:3；分辨率设定为1280×720，请选定16:9；<br />
									<br /> （2）在同一课程中，各讲应统一画幅的宽高比，不得混用。<br /> <br />

									（3）比赛支持两种比例视频上传，请在“视频介绍”中进行展示比例设置。<br /> <br /> 5.视频帧率为25帧/秒。<br />
									<br /> 6.扫描方式采用逐行扫描。<br /> <br /> <strong>（二）音频压缩格式及技术参数</strong><br />
									<br /> 1．音频压缩采用H.264格式编码。<br /> <br /> 2．采样率48KHz。<br /> <br />

									3．音频码流率128Kbps(恒定)。<br /> <br /> 4．必须是双声道，必须做混音处理。
								</p>
							</td>
						</tr>




						<!-- ------------------------------------------------------ -->
					</table></td>
			</tr>
		</table>
		<table width="990" height="5" border="0" cellpadding="0"
			cellspacing="0">
			<tr>
				<td></td>
			</tr>
		</table>

   
<jsp:include page="bottom.jsp"></jsp:include>
  </body>
</html>
