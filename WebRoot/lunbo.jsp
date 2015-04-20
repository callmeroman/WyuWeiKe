<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
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

<div class="scroll-outer">
	<div id="scroll" class="owl-carousel">
		<div class="item">
			<img src="images/1.jpg" alt="">
			<div class="shd"><a href=""></a></div>
			<div class="txt">
				<h3><a href="">港版iPhone 6发布</a></h3>
				<p>苹果在2014年9月推出的新产品，4.7寸的iPhone6和5.5寸的iPhone 6 Plus携新广告文案“Bigger than Bigger”正式亮相。</p>
			</div>
		</div>
		<div class="item">
			<img src="images/2.jpg" alt="">
			<div class="shd"><a href=""></a></div>
			<div class="txt">
				<h3><a href="">500万Gmail用户名密码泄露</a></h3>
				<p>据美国CNN 9月10日报道，近500万个Gmail用户的账号密码被黑客发布到了俄罗斯的一个比特币论坛上。</p>
			</div>
		</div>
		<div class="item">
			<img src="images/3.jpg" alt="">
			<div class="shd"><a href=""></a></div>
			<div class="txt">
				<h3><a href="">柳宗元铜像被拆除</a></h3>
				<p>广西柳州投资7000万元修建柳宗元像，将成为国内最高的人物铜像，但由于资金不到位，仅完成底座和核心柱子就被拆除。</p>
			</div>
		</div>
		<div class="item">
			<img src="images/4.jpg" alt="">
			<div class="shd"><a href=""></a></div>
			<div class="txt">
				<h3><a href="">越狱案逃犯高玉伦被抓获</a></h3>
				<p>哈尔滨越狱案3名嫌犯之一，此前被判死刑，于9月11日下午17时许在延寿县青川乡被公安机关抓获。</p>
			</div>
		</div>
		<div class="item">
			<img src="images/5.jpg" alt="">
			<div class="shd"><a href=""></a></div>
			<div class="txt">
				<h3><a href="">21世纪网收企业“保护费”</a></h3>
				<p>2014年9月3日，21世纪网包括主编、副主编在内的相关人员，因涉嫌新闻敲诈被上海市公安局抓获。</p>
			</div>
		</div>
		<div class="item">
			<img src="images/6.jpg" alt="">
			<div class="shd"><a href=""></a></div>
			<div class="txt">
				<h3><a href="">电子港澳通行证15日起启用</a></h3>
				<p>2014年9月，公安部决定，全国公安机关出入境管理部门自9月15日起全面启用电子往来港澳通行证。</p>
			</div>
		</div>
		<div class="item">
			<img src="images/7.jpg" alt="">
			<div class="shd"><a href=""></a></div>
			<div class="txt">
				<h3><a href="">“刀锋战士”枪杀女友非故意</a></h3>
				<p>残疾人100、200、400米世界纪录保持者。因涉嫌枪杀女友受审，2014年9月11日，法院宣判其故意杀人罪不成立。</p>
			</div>
		</div>
		<div class="item">
			<img src="images/8.jpg" alt="">
			<div class="shd"><a href=""></a></div>
			<div class="txt">
				<h3><a href="">苏格兰将举行独立公投</a></h3>
				<p>苏格兰独立公投将于9月18日举行。9月10日英国首相前往苏格兰进行挽留，试图阻止公众在9月18日的公投中支持独立。</p>
			</div>
		</div>
		<div class="item">
			<img src="images/9.jpg" alt="">
			<div class="shd"><a></a></div>
			<div class="txt">
				<h3><a href="">特色词条：小熊猫</a></h3>
				<p>躯体肥壮，身上披有粗长的毛，主要生活于海拔3000米以下有竹丛的地方，平日栖居于大的树洞或石洞中。</p>
			</div>
		</div>
		<div class="item">
			<img src="images/1.jpg" alt="">
			<div class="shd"><a href=""></a></div>
			<div class="txt">
				<h3><a href="">港版iPhone 6发布</a></h3>
				<p>苹果在2014年9月推出的新产品，4.7寸的iPhone6和5.5寸的iPhone 6 Plus携新广告文案“Bigger than Bigger”正式亮相。</p>
			</div>
		</div>
		<div class="item">
			<img src="images/2.jpg" alt="">
			<div class="shd"><a href=""></a></div>
			<div class="txt">
				<h3><a href="">500万Gmail用户名密码泄露</a></h3>
				<p>据美国CNN 9月10日报道，近500万个Gmail用户的账号密码被黑客发布到了俄罗斯的一个比特币论坛上。</p>
			</div>
		</div>
		<div class="item">
			<img src="images/3.jpg" alt="">
			<div class="shd"><a href=""></a></div>
			<div class="txt">
				<h3><a href="">柳宗元铜像被拆除</a></h3>
				<p>广西柳州投资7000万元修建柳宗元像，将成为国内最高的人物铜像，但由于资金不到位，仅完成底座和核心柱子就被拆除。</p>
			</div>
		</div>
	</div>
</div>

</body>
</html>
