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
	<table width="990" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td width="183" height="121" align="left" valign="top"><jsp:include
					page="bisai_middle.jsp"></jsp:include></td>
			<td width="10">&nbsp;</td>
			<td width="797" align="left" valign="top">
				<table width="797" border="0" cellpadding="0" cellspacing="1"
					bgcolor="#E7E7E7">
					<tr>
						<td width="797" height="29" background="images/nav_lan.jpg">&nbsp;<span
							class="bigwritetitle">评审规则</span>
						</td>
					</tr>

					<tr>
						<td height="51" align="center" valign="middle" bgcolor="#FFFFFF"
							class="bigredtitle">五邑大学微课教学比赛评审规则</td>
					</tr>
					<tr>
						<td height="127" align="left" valign="top" bgcolor="#FFFFFF"
							class="BBS_content">


							<table width="775" border="0" cellpadding="10" cellspacing="1"
								bgcolor="#E7E7E7">
								<tr>
									<td width="73" rowspan="2" align="center" valign="middle"
										bgcolor="#FFFFFF">评审规则<br> 10分</td>
									<td width="657" align="left" bgcolor="#FFFFFF"><strong>一、材料完整（5分）：</strong><br />
										包含微课视频，教学方案设计、课件等。如在微课视频中使用到的习题及总结等辅助扩展资料，可以单个文件方式上传相关辅助扩展资料。
									</td>
								</tr>
								<tr>
									<td width="657" bgcolor="#FFFFFF"><strong>二、技术规范（5分）：</strong>
										<br> 1.
										微课视频：时长5-15分钟，鼓励简明易懂、短小精趣的微课作品；视频图像清晰稳定、构图合理、声音清楚，主要教学内容有字幕提示等；视频片头应显示作品标题、作者、单位。
										<br>
										2．多媒体教学课件：配合视频讲授使用的主要教学课件为PPT格式，需单独文件提交；其他拓展资料符合网站上传要求。 <br>
										3．教学方案设计表内应注明讲课内容所属学科、专业、课程及适用对象等信息。</td>
								</tr>
								<tr>
									<td width="73" rowspan="3" align="center" valign="middle"
										bgcolor="#FFFFFF">教学安排<br> 40分</td>
									<td width="657" align="left" bgcolor="#FFFFFF"><strong>一、选题价值（10分）：</strong><br />
										选取教学环节中某一知识点、专题、实验活动作为选题，针对教学中的常见、典型、有代表性的问题或内容进行设计，类型包括但不限于：教授类、解题类、答疑类、实验类、活动类。选题尽量“小而精”，具备独立性、示范性、代表性，应针对教学过程中的重点、难点问题。</td>
								</tr>
								<tr>
									<td width="657" bgcolor="#FFFFFF"><strong>二、教学设计与组织（15分）：</strong>
										<br> 1. 教学方案：围绕选题设计，突出重点，注重实效；教学目的明确，教学思路清晰，注重学生全面发展。 <br>
										2. 教学内容：严谨充实，无科学性、政策性错误，能理论联系实际，反映社会和学科发展。 <br> 3.
										教学组织与编排：要符合学生的认知规律；教学过程主线清晰、重点突出，逻辑性强，明了易懂；注重突出学生的主体性以及教与学活动有机结合。
									</td>
								</tr>
								<tr>
									<td width="657" bgcolor="#FFFFFF"><strong>三、教学方法与手段（15分）：</strong><br />
										教学策略选择正确，注重调动学生的学习积极性和创造性思维能力；能根据教学需求选用灵活适当的教学方法；信息技术手段运用合理，正确选择使用各种教学媒体，教学辅助效果好。
									</td>
								</tr>
								<tr>
									<td width="73" rowspan="3" align="center" valign="middle"
										bgcolor="#FFFFFF">教学效果<br> 40分</td>
									<td width="657" align="left" bgcolor="#FFFFFF"><strong>一、目标达成(15分)：</strong><br />
										<p>完成设定的教学目标，有效解决实际教学问题，促进学生思维能力提高。</p></td>
								</tr>
								<tr>
									<td width="657" bgcolor="#FFFFFF"><strong>二、教学特色(15分)：</strong><br />
										教学形式新颖，教学过程深入浅出，形象生动，趣味性和启发性强，教学氛围的营造有利于提升学生学习的积极主动性。</td>
								</tr>
								<tr>
									<td width="657" bgcolor="#FFFFFF"><strong>三、教师规范（10分）：</strong><br />
										教学语言规范、清晰，富有感染力；教学逻辑严谨，能够较好运用各种现代教育技术手段，相关知识点、教学内容等讲解清楚。如教师出镜，则需仪表得当，教态自然，能展现良好的教学风貌和个人魅力。
									</td>
								</tr>
								<tr>
									<td width="73" align="center" valign="middle" bgcolor="#FFFFFF">网络评价<br />
										10分</td>
									<td width="657" align="left" bgcolor="#FFFFFF">依据参赛微课作品发布后受欢迎程度、点击率、投票率、用户评价、作者与用户互动情况、收藏次数、分享次数、讨论热度等综合评价。</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
	</table>
	<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>
