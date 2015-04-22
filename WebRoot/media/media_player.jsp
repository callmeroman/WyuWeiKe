<%@page import="com.user.bean.Media"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>My JSP 'media_player.jsp' starting page</title>

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
		<%
			Media media = new Media();
		%>
		<!-- 嵌入Flash播放器 -->
		<table>
			<tr>
				<td align="center">
				<object classid="CLSID:6BF52A52-394A-11D3-B153-00C04F79FAA6"
						type="application/x-oleobject" height="400" width="600">
						<!-- <param>元素,value属性指定被加载的视频文件.实例中用的是flash制作的视频播放器.
    				在value属性值中向player.swf播放器传递了一个media_path参数.该参数指定了要播放的视频的路径. -->
						<param name="url" value="<%=basePath%>files/test.wmv" />
						<param name="autosize" value="true" />
						<param name="autostart" value="true" />
						<param name="AnimationAtStart" value="true" />
						
						<param name="showstatusbar" value="true" />
						<param name="showtracker" value="true" />
						<param name="showcontrols" value="true" />
						<param name="uimode" value="full" />
						<param name="displaysize" value="" />
						<param name="" value="" />
						<param name="" value="" />
						<!-- <embed> 标签定义嵌入的内容，比如插件。src属性也是用来加载影片,与<param>标记的value属性值具体相同的功能. -->
						<!-- showstatusbar:是否显示状态条; showtracker:返回或设置是否显示搜索栏(逻辑型);
							showcontrols:返回或设置控制面板是否可见;uiMode: 播放器界面模式，可为Full, Mini, None, Invisible;
							type 属性：字符串作用：为嵌入插件指定MIME类型.MIME 是描述消息内容类型的因特网标准。-->
						<embed filename="test.wmv" autostart="true" showcontrols="true"
							showstatusbar="true" showtracker="true" uimode="full" autosize="true"
							src="<%=basePath%>files/test.wmv" type="application/x-mplayer2" height="98%"
							width="98%" AnimationAtStart="true"                       ></embed>
					</object></td>
			</tr>
		</table>
	</center>
</body>
</html>
