<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'p.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link type="text/css" rel="stylesheet" href="css/owl.carousel.css">
<link type="text/css" rel="stylesheet" href="css/owl.theme.css">

<style type="text/css">
*{margin:0;padding:0;list-style-type:none;}
.scroll-outer{height:421px;background:url(images/bg.jpg) 50% 0 no-repeat;}
#scroll{width:1080px;margin:0 auto;padding-top:30px;font-family:"Microsoft Yahei";}
#scroll .owl-wrapper-outer{margin:0 auto;}
#scroll .item{position:relative;width:250px;height:339px;margin:0 auto;background-color:#fff;overflow:hidden;}
#scroll .shd{position:absolute;left:0;top:0;width:100%;height:100%;background-color:rgba(0, 0, 0, 0.15);}
#scroll .shd a{display:block;width:250px;height:239px;*background-image:url(about:blank);background-image:url(about:blank)\0;}
#scroll .txt{position:absolute;left:0;bottom:0;width:226px;height:100px;padding:0 12px;color:#888;box-shadow:0 0 15px 15px rgba(228, 233, 238, 0.95);background-color:#e4e9ee\9;background-color:rgba(228, 233, 238, 0.95);}
#scroll h3{width:226px;height:25px;margin-bottom:6px;padding-top:6px;font:700 18px/25px arial,"Microsoft Yahei";overflow:hidden;}
#scroll h3 a{color:#333;text-decoration:none;}
#scroll h3 a:hover{color:#338de6;}
#scroll p{width:226px;height:54px;line-height:18px;font-size:12px;}

#scroll .item:hover .shd{background-color:rgba(0, 0, 0, 0);}
#scroll .item:hover .txt{background-color:#fff\9;background-color:rgba(248, 249, 249, 0.95);box-shadow:0 0 15px 15px rgba(248, 249, 249, 0.95);}

.owl-theme .owl-controls .owl-buttons div{position:absolute;top:180px;width:30px;height:60px;margin:0;padding:0;border-radius:0;font:60px/60px "宋体";background-color:transparent;overflow:hidden;_display:none;}
.owl-theme .owl-controls .owl-buttons .owl-prev{left:-40px;}
.owl-theme .owl-controls .owl-buttons .owl-next{right:-40px;}
.owl-theme .owl-controls .owl-buttons .owl-prev:before{content:"<";}
.owl-theme .owl-controls .owl-buttons .owl-next:before{content:">";}
</style>

<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#scroll').owlCarousel({
		items: 4,
		autoPlay: true,
		navigation: true,
		navigationText: ["",""],
		scrollPerPage: true
	});
});
</script>
  </head>
  <body>
  <jsp:include page="top.jsp"></jsp:include>
  
  </body>
  <body>
<jsp:include page="lunbo.jsp"></jsp:include>
  </body>
</html>
