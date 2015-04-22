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

<title>五邑大学微课教学专题网</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="css/Style.css">
<script type="text/javascript" src="js/lunboimg.js"></script>
<script type="text/javascript" src="js/jquery-1.2.6.js"></script>
<script type="text/javascript" src="js/tween.js"></script>

<script type="text/javascript" src="../js/jquery.js" charset="utf-8"></script>

</head>

<body>
	<center>
					<!-- method="post" 放在enctype="multipart/form-data"的后面 -->
		<fieldset>
			<legend ><strong>视频上传:</strong></legend>
			<form  id="visible" name="formmedia_up"  action="mediaupload" enctype="multipart/form-data" method="post" onclick="">
				<table border="1" >
					<tr>
						<td><span>选择视频：</span><input type="file" value="选择视频"
							name="media_path" id="media_path">
						</td>
					</tr>
					<tr>
						<td><span>选择图片：</span><input type="file" value="选择图片"
							name="media_picturepath" id="media_picturepath">
						</td>
						<td>
						<div><font color="red">*请先截取视频图片，再上传。本图片用于视频展示</font></div>
						</td>
					</tr>
					<tr>
						<td><span>视频标题：</span><input type="text" name="media_name"
							id="media_name">
						</td>
					</tr>
					<tr>
						<td><span>所属课程：</span> <input type="text" name="media_type"
							id="media_type">
						</td>
					</tr>
					<tr>
						<td height="52" colspan="4" align="center"><label><input
								name="Submit" type="submit" class="bluebuttom" value="上传视频" />
						</label>
						</td>
					</tr>
				</table>
		</form>
	</fieldset>	
			</center>
</body>
</html>
