<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
System.out.println("调用index.jsp ");
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

<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
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
<body><jsp:include page="top.jsp"></jsp:include> </body>
<body>
<center>

<!-- --------------------------轮播---------------------------------------- -->
<jsp:include page="lunbo.jsp"></jsp:include>

<!-- ----------------------------- 参赛流程框与图片滑动框间隔线 ----------------------------- -->
<table width="100%" border="0" cellpadding="0" cellspacing="0" background="images/lun_di.jpg">
	<tr>
		<td align="left"><img src="images/lun_di.jpg" width="1" height="13" /></td>
	</tr>
</table>

<!-- ----------------------------- 参赛流程框 ----------------------------- -->
<table width="990" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td width="192" align="left">
			<a href="bisai.htm"><img src="images/lc_1.jpg" width="192" height="83" border="0" /></a>
		</td>
		<td width="786" align="center" valign="middle" background="images/lc_2.jpg">
			<table width="721" height="58" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="721" height="26" align="left">
						<a href="/user/register.jsp" class="red"><strong>选手注册</strong> </a>-&gt; 
						<a href="mycourse.jsp" class="red"><strong>报名参赛</strong></a>-&gt; 
						<a href="mycourse.jsp" class="red"><strong>上传作品</strong></a>-&gt; <strong>初赛</strong> -&gt; <strong>复赛</strong> -&gt; <strong>决赛</strong>
					</td>
				</tr>
				<tr>
					<td height="32" align="left" valign="bottom">
					<a href="help.jsp" class="green">常见问题解答</a> | <a href="down.jsp" class="red">下载中心</a>
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

				<!-- -----------------------------  ----------------------------- -->

				<!-- ----------------------------- 赛事公告框 ----------------------------- -->
<table>
	<tr>
		<td>
			<table width="990" height="50" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<td width="776" align="left" valign="top"><table width="776" border="0" cellpadding="0" cellspacing="0">
				       <tr>
									<!-- ----------------------------- Part 1 ----------------------------- -->
						<td width="385" align="left" valign="top">
						  	<table width="385" height="298" border="0" cellpadding="0" cellspacing="1" bgcolor="#E7E7E7">
								<tr>
									<td width="102" height="31" align="center" background="images/nav_lan.jpg"><a
													href="news/html/4/4-1.htm" class="white">赛事公告</a>
									</td>
									<td width="280" align="right"
													background="images/nav_qian.jpg"><a
													href="news/html/4/4-1.htm"><img src="images/more.jpg"
														width="48" height="16" border="0" /> </a>&nbsp;
									</td>
								</tr>
								<tr>
									<td height="266" colspan="2" align="center" valign="top"
													bgcolor="#FFFFFF">
										<table width="360" border="0"
														cellpadding="0" cellspacing="0">
											<tr>
												<td width="360" height="48" align="center"
																valign="middle"><a href="files/比赛方案.docx"
																class="blue"><strong>建设中。。。敬请期待。。。。</strong> </a>
												</td>
											</tr>
											<tr>
												<td height="98" align="left" valign="middle"
																class="diaocha2010">
																建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。...
																<a href="" class="cofe">[查看更多]</a>
												</td>
											</tr>
											<tr>
												<td height="1" background="images/xuxuan.jpg"><img
																src="images/xuxuan.jpg" width="3" height="1" />
												</td>
											</tr>

											<tr>
												<td height="29" align="left"><span class="style_red">·</span><a
																href="gonggao.jsp" title="建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。"
																target="_blank">建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。</a>
												</td>
											</tr>

											<tr>
												<td height="29" align="left"><span class="style_red">·</span><a
																href="gonggao.jsp" title="建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。"
																target="_blank">建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。</a>
												</td>
											</tr>
											<tr>
												<td height="29" align="left"><span class="style_red">·</span><a
																href="gonggao.jsp" title="建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。"
																target="_blank">建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。</a>
												</td>
											</tr>
											<tr>
												<td height="29" align="left"><span class="style_red">·</span><a
																href="gonggao.jsp" title="建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。"
																target="_blank">建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。</a>
												</td>
											</tr>
											<tr>
												<td height="29" align="left"><span class="style_red">·</span><a
																href="gonggao.jsp" title="建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。"
																target="_blank">建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。</a>
												</td>
											</tr>
											<tr>
												<td height="29" align="left"><span class="style_red">·</span><a
																href="gonggao.jsp" title="建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。"
																target="_blank">建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。</a>
												</td>
											</tr>
											<tr>
												<td height="29" align="left"><span class="style_red">·</span><a
																href="gonggao.jsp" title="建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。"
																target="_blank">建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。</a>
												</td>
											</tr>
											<tr>
												<td height="29" align="left"><span class="style_red">·</span><a
																href="gonggao.jsp" title="建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。"
																target="_blank">建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。</a>
												</td>
											</tr>
											<tr>
												<td height="29" align="left"><span class="style_red">·</span><a
																href="gonggao.jsp" title="建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。"
																target="_blank">建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。</a>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>

						<td width="6">&nbsp;</td>
									<!-- ----------------------------- Part 2 ----------------------------- -->
						<td width="385" align="left" valign="top">
							<table width="385" border="0" cellpadding="0" cellspacing="1"
											bgcolor="#E7E7E7">
							  <tr>
									<td width="102" height="32" align="center"
													background="images/nav_lan.jpg"><a
													href="gonggao.jsp" class="white">公告详情</a></td>
									<td width="280" align="right"
													background="images/nav_qian.jpg"><a
													href="news/html/7/7-1.htm"><img src="images/more.jpg"
														width="48" height="16" border="0" /> </a>&nbsp;</td>
							</tr>
							<tr>
								<td colspan="2" align="center" valign="top"
													bgcolor="#FFFFFF">
									<table width="367" border="0" cellspacing="0" cellpadding="0">
										<tr><td height="436" align="left" valign="middle" class="diaocha2010">
															建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。建设中。。。敬请期待。。。。...
															<a href="gonggao.jsp" class="cofe">[查看更多]</a>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
						
					   </td>
					</tr>
			</table>
							<table width="776" height="5" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td></td>
								</tr>
							</table>
							<table width="776" height="213" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td width="776" height="213" valign="top"><table
											width="776" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td width="144" height="22" align="center"
													background="images/nav_lan.jpg"><a
													href="zuopingshow.jsp" class="white">作品展示</a></td>
												<td width="351" align="right"><a
													href="show.asp?t=1&k=0"><img src="images/more.jpg"
														width="48" height="16" border="0" /> </a>&nbsp;</td>
											</tr>
										</table>

										<table width="776" height="2" border="0" cellpadding="0"
											cellspacing="0" bgcolor="#1088AD">
											<tr>
												<td></td>
											</tr>
										</table>
										<table width="776" border="0" cellpadding="0" cellspacing="1"
											bgcolor="#E7E7E7">
											<tr>
												<td height="289" align="center" bgcolor="#FFFFFF">
													<table width="744" height="267" border="0" cellpadding="10"
														cellspacing="0">
														<tr>
															<td width="186" align="center" valign="middle">
																<!--视频开始-->
																<table width="170" border="0" cellpadding="3"
																	cellspacing="0">
																	<tr>
																		<td colspan="2" align="center" valign="middle"
																			class="vodkuang">

																			<table width="150" height="115" border="0"
																				cellspacing="0" cellpadding="0">
																				<tr>
																					<td>建设中。敬请期待。。</td>
																				</tr>
																			</table>
																		</td>
																	</tr>
																	<tr>
																		<td>建设中。敬请期待。。
																		</td>
																	</tr>
																	<tr>
																		<td>建设中。敬请期待。。</td>
																	</tr>
																	<tr>
																		<td >建设中。敬请期待。。</td>
																	</tr>
																</table> <!--视频结束-->
															</td>

															<td width="186" align="center" valign="middle">
																<!--视频开始-->
																<table width="170" border="0" cellpadding="3"
																	cellspacing="0">
																	<tr>
																		<td colspan="2" align="center" valign="middle"
																			class="vodkuang">

																			<table width="150" height="115" border="0"
																				cellspacing="0" cellpadding="0">
																				<tr>
																					<td>建设中。敬请期待。。</td>
																				</tr>
																			</table>
																		</td>
																	</tr>
																	<tr>
																		<td>建设中。敬请期待。。
																		</td>
																	</tr>
																	<tr>
																		<td>建设中。敬请期待。。</td>
																	</tr>
																	<tr>
																		<td >建设中。敬请期待。。</td>
																	</tr>
																</table> <!--视频结束-->
															</td>

															<td width="186" align="center" valign="middle">
																<!--视频开始-->
																<table width="170" border="0" cellpadding="3"
																	cellspacing="0">
																	<tr>
																		<td colspan="2" align="center" valign="middle"
																			class="vodkuang">

																			<table width="150" height="115" border="0"
																				cellspacing="0" cellpadding="0">
																				<tr>
																					<td>建设中。敬请期待。。</td>
																				</tr>
																			</table>
																		</td>
																	</tr>
																	<tr>
																		<td>建设中。敬请期待。。
																		</td>
																	</tr>
																	<tr>
																		<td>建设中。敬请期待。。</td>
																	</tr>
																	<tr>
																		<td >建设中。敬请期待。。</td>
																	</tr>
																</table> <!--视频结束-->
															</td>

															<td width="186" align="center" valign="middle">
																<!--视频开始-->
																<table width="170" border="0" cellpadding="3"
																	cellspacing="0">
																	<tr>
																		<td colspan="2" align="center" valign="middle"
																			class="vodkuang">

																			<table width="150" height="115" border="0"
																				cellspacing="0" cellpadding="0">
																				<tr>
																					<td>建设中。敬请期待。。</td>
																				</tr>
																			</table>
																		</td>
																	</tr>
																	<tr>
																		<td>建设中。敬请期待。。
																		</td>
																	</tr>
																	<tr>
																		<td>建设中。敬请期待。。</td>
																	</tr>
																	<tr>
																		<td >建设中。敬请期待。。</td>
																	</tr>
																</table> <!--视频结束-->
															</td>

														</tr>

														<tr>
															<td width="186" align="center" valign="middle">
																<!--视频开始-->
																<table width="170" border="0" cellpadding="3"
																	cellspacing="0">
																	<tr>
																		<td colspan="2" align="center" valign="middle"
																			class="vodkuang">

																			<table width="150" height="115" border="0"
																				cellspacing="0" cellpadding="0">
																				<tr>
																					<td>建设中。敬请期待。。</td>
																				</tr>
																			</table>
																		</td>
																	</tr>
																	<tr>
																		<td>建设中。敬请期待。。
																		</td>
																	</tr>
																	<tr>
																		<td>建设中。敬请期待。。</td>
																	</tr>
																	<tr>
																		<td >建设中。敬请期待。。</td>
																	</tr>
																</table> <!--视频结束-->
															</td>

															<td width="186" align="center" valign="middle">
																<!--视频开始-->
																<table width="170" border="0" cellpadding="3"
																	cellspacing="0">
																	<tr>
																		<td colspan="2" align="center" valign="middle"
																			class="vodkuang">

																			<table width="150" height="115" border="0"
																				cellspacing="0" cellpadding="0">
																				<tr>
																					<td>建设中。敬请期待。。</td>
																				</tr>
																			</table>
																		</td>
																	</tr>
																	<tr>
																		<td>建设中。敬请期待。。
																		</td>
																	</tr>
																	<tr>
																		<td>建设中。敬请期待。。</td>
																	</tr>
																	<tr>
																		<td >建设中。敬请期待。。</td>
																	</tr>
																</table> <!--视频结束-->
															</td>

															<td width="186" align="center" valign="middle">
																<!--视频开始-->
																<table width="170" border="0" cellpadding="3"
																	cellspacing="0">
																	<tr>
																		<td colspan="2" align="center" valign="middle"
																			class="vodkuang">

																			<table width="150" height="115" border="0"
																				cellspacing="0" cellpadding="0">
																				<tr>
																					<td>建设中。敬请期待。。</td>
																				</tr>
																			</table>
																		</td>
																	</tr>
																	<tr>
																		<td>建设中。敬请期待。。
																		</td>
																	</tr>
																	<tr>
																		<td>建设中。敬请期待。。</td>
																	</tr>
																	<tr>
																		<td >建设中。敬请期待。。</td>
																	</tr>
																</table> <!--视频结束-->
															</td>

															<td width="186" align="center" valign="middle">
																<!--视频开始-->
																<table width="170" border="0" cellpadding="3"
																	cellspacing="0">
																	<tr>
																		<td colspan="2" align="center" valign="middle"
																			class="vodkuang">

																			<table width="150" height="115" border="0"
																				cellspacing="0" cellpadding="0">
																				<tr>
																					<td>建设中。敬请期待。。</td>
																				</tr>
																			</table>
																		</td>
																	</tr>
																	<tr>
																		<td>建设中。敬请期待。。
																		</td>
																	</tr>
																	<tr>
																		<td>建设中。敬请期待。。</td>
																	</tr>
																	<tr>
																		<td >建设中。敬请期待。。</td>
																	</tr>
																</table> <!--视频结束-->
															</td>

														</tr>

														<tr>

															<td width="186" align="center" valign="middle"></td>

															<td width="186" align="center" valign="middle"></td>

															<td width="186" align="center" valign="middle"></td>

															<td width="186" align="center" valign="middle"></td>

														</tr>

													</table>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
							<table width="776" height="5" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td></td>
								</tr>
							</table>
						<td width="6"></td>
						<td width="209" align="left" valign="top">

							<table width="209" height="5" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td></td>
								</tr>
							</table> <!-- ----------------------------- 微课搜索框 ----------------------------- -->
							<table width="209" height="86" border="0" cellpadding="0"
								cellspacing="1" bgcolor="#E7E7E7">
								<tr>
									<td width="87" height="28" align="center"
										background="images/nav_lan.jpg" class="bigwritetitle">微课搜索</td>
									<td width="119" background="images/nav_qian.jpg">&nbsp;</td>
								</tr>
								<tr>
									<td height="57" colspan="2" align="center" bgcolor="#FFFFFF">
										<!-- ----------------------------- ----------------------------- -->
									<form id="form3" name="form3" method="post" action="so.asp" OnSubmit="">
										<table width="146" height="41" border="0" cellpadding="0"
											cellspacing="0">
											
												<tr>
													<td width="100"><input name="weiso" type="text"
														id="weiso" size="15" /></td>
													<td width="46"><input name="Submit3" type="submit"
														class="bluebuttom" value="搜索" /></td>
												</tr>
												<tr>
													<td colspan="2" align="left"><a href="so_all.asp"><img
															src="images/INFOR.GIF" width="15" height="15" border="0"
															align="absmiddle" />高级检索</a></td>
												</tr>
											
										</table>
									</form>
									</td>
								</tr>
								<!-- ----------------------------- ----------------------------- -->
							</table>
							<table width="209" height="5" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td></td>
								</tr>
							</table>
							<table width="209" height="5" border="0" cellpadding="0"
								cellspacing="0">
							</table>


							<table width="209" border="0" cellpadding="0" cellspacing="1"
								bgcolor="#E7E7E7">
								<tr>
									<td width="92" align="center" background="images/nav_lan.jpg"><a
										href="bisai_contactus.html" class="white">联系方式</a></td>
									<td width="114" background="images/nav_qian.jpg">&nbsp;</td>
								</tr>
								<tr>
									<td height="121" colspan="2" align="center" valign="top"
										bgcolor="#FFFFFF"><table width="185" height="125"
											border="0" cellpadding="0" cellspacing="0">
											<tr>
												<td width="185" height="30" align="left"><span
													class="style_red">赛事联系人：</span>xx</td>
											</tr>
											<tr>
												<td height="27" align="left">电话：</td>
											</tr>
											<tr>
												<td height="29" align="left">EMAIL：xxxxxxx@xxxxxxx</td>
											</tr>
										</table></td>
								</tr>
							</table>
							<table width="209" height="5" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td></td>
								</tr>
							</table>
							<table class="somhang" width="209" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td align="center"><img src="images/paihang.jpg"
										width="210" height="88" /></td>
								</tr>
							</table>
							<table width="209" height="5" border="0" cellpadding="0"
								cellspacing="0">
								<tr>
									<td></td>
								</tr>
							</table>
							<table width="209" border="0" cellpadding="0" cellspacing="0"
								bgcolor="#efefef">
								<tr>
									<td height="132" align="center" valign="top">
										<table width="209" border="0" cellpadding="0" cellspacing="1"
											bgcolor="#FFFFFF">
											<tr>
												<td width="33" height="22" align="center" bgcolor="#767676"
													class="writefont12">排名</td>
												<td width="129" align="center" bgcolor="#767676"
													class="writefont12">作品</td>
												<td width="43" align="center" bgcolor="#767676"
													class="writefont12">票数</td>
											</tr>
										</table> <!-- ----------------------------- ----------------------------- -->
										<table width="203" border="0" cellpadding="0" cellspacing="0">
											<tr>
												<td colspan="3" align="center"><img src="images/x.jpg"
													width="190" height="2" /></td>
											</tr>
											<tr>
												<td width="25" height="24" align="center">1</td>
												<td width="148" align="left">·<a href=>建设中。敬请期待。</a></td>
												<td width="30" align="center">187</td>
											</tr>


											<tr>
												<td colspan="3" align="center"><img src="images/x.jpg"
													width="190" height="2" /></td>
											</tr>
											<tr>
												<td width="25" height="24" align="center">2</td>
												<td width="148" align="left">·<a href=>建设中。敬请期待。</a></td>
												<td width="30" align="center">157</td>
											</tr>


											<tr>
												<td colspan="3" align="center"><img src="images/x.jpg"
													width="190" height="2" /></td>
											</tr>
											<tr>
												<td width="25" height="24" align="center">3</td>
												<td width="148" align="left">·<a href=>建设中。敬请期待。</a></td>
												<td width="30" align="center">136</td>
											</tr>


											<tr>
												<td colspan="3" align="center"><img src="images/x.jpg"
													width="190" height="2" /></td>
											</tr>
											<tr>
												<td width="25" height="24" align="center">4</td>
												<td width="148" align="left">·<a href=>建设中。敬请期待。</a></td>
												<td width="30" align="center">135</td>
											</tr>


											<tr>
												<td colspan="3" align="center"><img src="images/x.jpg"
													width="190" height="2" /></td>
											</tr>
											<tr>
												<td width="25" height="24" align="center">5</td>
												<td width="148" align="left">·<a href=>建设中。敬请期待。</a></td>
												<td width="30" align="center">125</td>
											</tr>


											<tr>
												<td colspan="3" align="center"><img src="images/x.jpg"
													width="190" height="2" /></td>
											</tr>
											<tr>
												<td width="25" height="24" align="center">6</td>
												<td width="148" align="left">·<a href=>建设中。敬请期待。</a></td>
												<td width="30" align="center">125</td>
											</tr>


											<tr>
												<td colspan="3" align="center"><img src="images/x.jpg"
													width="190" height="2" /></td>
											</tr>
											<tr>
												<td width="25" height="24" align="center">7</td>
												<td width="148" align="left">·<a href=>建设中。敬请期待。</a></td>
												<td width="30" align="center">125</td>
											</tr>


											<tr>
												<td colspan="3" align="center"><img src="images/x.jpg"
													width="190" height="2" /></td>
											</tr>
											<tr>
												<td width="25" height="24" align="center">8</td>
												<td width="148" align="left">·<a href=>建设中。敬请期待。</a></td>
												<td width="30" align="center">125</td>
											</tr>


											<tr>
												<td colspan="3" align="center"><img src="images/x.jpg"
													width="190" height="2" /></td>
											</tr>
											<tr>
												<td width="25" height="24" align="center">9</td>
												<td width="148" align="left">·<a href=>建设中。敬请期待。</a></td>
												<td width="30" align="center">125</td>
											</tr>


											<tr>
												<td colspan="3" align="center"><img src="images/x.jpg"
													width="190" height="2" /></td>
											</tr>
											<tr>
												<td width="25" height="24" align="center">10</td>
												<td width="148" align="left">·<a href=>建设中。敬请期待。</a></td>
												<td width="30" align="center">125</td>
											</tr>


											<tr>
												<td colspan="3" align="center"><img src="images/x.jpg"
													width="190" height="2" /></td>
											</tr>
											<tr>
												<td width="25" height="24" align="center">11</td>
												<td width="148" align="left">·<a href=>建设中。敬请期待。</a></td>
												<td width="30" align="center">125</td>
											</tr>


											<tr>
												<td colspan="3" align="center"><img src="images/x.jpg"
													width="190" height="2" /></td>
											</tr>
											<tr>
												<td width="25" height="24" align="center">12</td>
												<td width="148" align="left">·<a href=>建设中。敬请期待。</a></td>
												<td width="30" align="center">125</td>
											</tr>


											<tr>
												<td colspan="3" align="center"><img src="images/x.jpg"
													width="190" height="2" /></td>
											</tr>
											<tr>
												<td width="25" height="24" align="center">13</td>
												<td width="148" align="left">·<a href=>建设中。敬请期待。</a></td>
												<td width="30" align="center">125</td>
											</tr>


											<tr>
												<td colspan="3" align="center"><img src="images/x.jpg"
													width="190" height="2" /></td>
											</tr>
											<tr>
												<td width="25" height="24" align="center">14</td>
												<td width="148" align="left">·<a href=>建设中。敬请期待。</a></td>
												<td width="30" align="center">125</td>
											</tr>


											<tr>
												<td colspan="3" align="center"><img src="images/x.jpg"
													width="190" height="2" /></td>
											</tr>
											<tr>
												<td width="25" height="24" align="center">15</td>
												<td width="148" align="left">·<a href=>建设中。敬请期待。</a></td>
												<td width="30" align="center">125</td>
											</tr>


											<tr>
												<td colspan="3" align="center"><img src="images/x.jpg"
													width="190" height="2" /></td>
											</tr>
											<tr>
												<td width="25" height="24" align="center">16</td>
												<td width="148" align="left">·<a href=>建设中。敬请期待。</a></td>
												<td width="30" align="center">125</td>
											</tr>


											<tr>
												<td colspan="3" align="center"><img src="images/x.jpg"
													width="190" height="2" /></td>
											</tr>
											<tr>
												<td width="25" height="24" align="center">17</td>
												<td width="148" align="left">·<a href=>建设中。敬请期待。</a></td>
												<td width="30" align="center">125</td>
											</tr>


											<tr>
												<td colspan="3" align="center"><img src="images/x.jpg"
													width="190" height="2" /></td>
											</tr>
											<tr>
												<td width="25" height="24" align="center">18</td>
												<td width="148" align="left">·<a href=>建设中。敬请期待。</a></td>
												<td width="30" align="center">125</td>
											</tr>


											<tr>
												<td colspan="3" align="center"><img src="images/x.jpg"
													width="190" height="2" /></td>
											</tr>
											<tr>
												<td width="25" height="24" align="center">19</td>
												<td width="148" align="left">·<a href=>建设中。敬请期待。</a></td>
												<td width="30" align="center">125</td>
											</tr>


											<tr>
												<td colspan="3" align="center"><img src="images/x.jpg"
													width="190" height="2" /></td>
											</tr>
											<tr>
												<td width="25" height="24" align="center">20</td>
												<td width="148" align="left">·<a href=>建设中。敬请期待。</a></td>
												<td width="30" align="center">125</td>
											</tr>
										</table></td>
								</tr>
							</table></td>
					</tr>
				</table>
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					background="images/nav_bg.jpg">
					<tr>
						<td width="3" align="left"><img src="images/nav_bg.jpg"
							width="3" height="40" /></td>
						<td width="100%" align="center" class="writefont12"><a
							href="bisai.jsp" class="white">赛事指南</a> | <a href="help.jsp"
							class="white">相关问题</a> | <a href="reg_agreement.html"
							class="white">网站申明</a>| <a href="down.jsp" class="white">下载中心</a>|<a
							href="<%=basePath%>user/register.jsp" class="white">注册</a>| <a href="<%=basePath%>user/login.jsp"
							class="white">登录</a></td>
					</tr>
				</table>

				<table width="100%" height="133" border="0" cellpadding="0"
					cellspacing="0">
					<tr>
						<td align="center" class="list1">Copyright(c)
							2013：五邑大学教师教学发展中心版权所有<br /> 地址：广东省江门市蓬江区东成村22号 邮编：529020<br />
							电话/传真：0750-3296077<br /> 邮箱：wyuchemzzm@126.com<br />
							办公地点：五邑大学南主楼五楼541<br />
						</td>
					</tr>
				</table>
</center>
</body>
</html>
