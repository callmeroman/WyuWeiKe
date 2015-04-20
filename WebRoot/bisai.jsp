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
          <td width="797" height="29" background="images/nav_lan.jpg">&nbsp;<span class="bigwritetitle">比赛方案</span></td>
        </tr>
        
       <tr>
          <td height="51" align="center" valign="middle" bgcolor="#FFFFFF" class="bigredtitle">五邑大学微课教学比赛方案</td>
        </tr>
        <tr>
          <td height="51" align="left" valign="middle" bgcolor="#FFFFFF" class="BBS_content">　　<span class="bigredtitle">一、组织机构</span><br />
            <br />
            　　
            主办单位：五邑大学教师教学发展中心<br />
            <br />
            　　
            承办单位：五邑大学各院系、 有关机构<br />
            <br />
            　　
           <span class="bigredtitle"> 二、比赛网站</span><br />
            <br />
            　　
            五邑大学微课专题网：比赛通知、方案、公告、流程、评审规则等，均在本网站公布。作品具体技术规范和操作步骤参见网站首页比赛指南。
            <br />
            <br />
            　　
           <span class="bigredtitle"> 三、参赛对象</span><br />
            <br />
            　　
           参赛对象为本校专任教师，每位参赛教师提交参赛作品数量限为1件。按院系参赛（每个院系可以提交1-3件参赛作品）和个人参赛两种方式进行。
            <br />
            <br />
            　　
          <span class="bigredtitle">  四、比赛内容</span><br />
            <br />
            　　
            参赛教师可根据个人授课科目确定参赛课程，选取知识点，设计、制作微课。
             <br />
            <br />
            　　
           <span class="bigredtitle"> 五、参赛方式及账户说明</span><br />
            <br />
            　　
            参赛选手通过教师教学发展中心“微课专题网”完成注册、登录、提交作品及相关附件。<br />
            <br />
            　　
          凡有选手参赛的学院或个人，均需在比赛网站注册账户，该账户通过比赛网站身份认证后方可使用。参赛选手身份注册及认证方法如下：<br />
            <br />
            　　
           1.注册，登录比赛网站，点击网站首页导航栏右侧“注册报名”，选择“院系管理员注册”，如实填写学校相关资料，完成注册。<br />
            <br />
            　　
            2.认证，登录微课比赛网站，进入“管理中心”，点击左侧的“身份认证”，下载“院系管理员身份认证表”，填写盖章后，将扫描件图片上传至“身份认证”处。<br />
            <br />
            　　
            3.管理，院级管理员账户经由比赛主办方核实认证后开放管理权限，即可对本院参赛作品进行相关管理。<br />
            <br />
            　　
            <span class="bigredtitle">六、比赛阶段</span><br />
            <br />
            　　
            比赛分初赛、复赛和决赛三个阶段：<br />
            <br />
            　　
            1.初赛时段为：201x年x月xx日-201x年x月xx日。各院系可根据本院情况在201x年x月xx日-201x年x月xx日时间段内安排本院赛事进度，各院系应认真组织，广泛发动，积极为教师参赛创造条件。<br />
            <br />
            　　
            2.复赛阶段：各院系可在初赛时间段内组织选拔参赛选手,制作、上传参赛作品。每个学院推荐名额限制为：本院专任教师的3%。<br />
            <br />
            　　
            3.决赛阶段：由比赛主办方组织专家评审，评选出决赛获奖选手，并择期召开表彰大会。<br />
            <br />
            　　
            <span class="bigredtitle">七、作品要求</span><br />
            <br />
            　　
           参赛教师围绕一门课程的某个知识点或教学环节，充分合理运用各种现代教育技术手段及设备，录制成时长在5-15分钟的微课视频。并配套提供教学设计文本、多媒体教学课件等辅助材料。<br />
            <br />
            　　
            1.教学视频要求<br />
            <br />
            　　
            图像清晰稳定、构图合理、声音清楚，视频片头应显示标题、作者和单位，主要教学内容有字幕提示。视频格式及上传要求详见“全国高校微课教学比赛”网站（http://weike.enetedu.com）比赛指南等相关文档。<br />
            <br />
            　　
            2.多媒体教学课件要求<br />
            <br />
            　　
            多媒体教学课件限定为PPT格式。要求围绕教学目标，反映主要教学内容，与教学视频合理搭配，单独提交。其他与微课教学内容相关辅助材料如练习测试、教学评价、动画、视频、习题、图片等多媒体素材等材料也应单独提交。<br />
            <br />
            　　
            3.教学设计要求<br />
            <br />
            　　
            教学设计应反映教师教学思想、课程设计思路和教学特色，包括教学背景、教学目标、教学方法和教学总结等方面内容，并在开头注明讲课内容所属学科、专业、课程及适用对象等信息。文件格式：word。<br />
            <br />
            　　
         <span class="bigredtitle">八、奖项设置</span><br />
            <br />
            　　
            1.个人奖：比赛设一、二、三等奖及优秀奖。<br />
            <br />
            　　
            2.优秀组织奖：面向各级赛事组织单位，根据赛事组织情况，评选优秀组织奖。<br />
            <br />
            　　</td>
        </tr>
      </table></td>
    </tr>
  </table>

   
<jsp:include page="bottom.jsp"></jsp:include>
  </body>
</html>
