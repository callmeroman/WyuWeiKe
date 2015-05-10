<%@page import="javax.crypto.interfaces.PBEKey"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	System.out.println("调用userlist，取出pb="+request.getAttribute("pb"));
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'userlist.jsp' starting page</title>

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
	<%--要遍历PageBean的beanList集合 --%>
	<table width="90%" border="2" cellpadding="5" cellspacing="1"
		bgcolor="#E7E7E7">
		<tr>
			<th><strong>教工号</strong>
			</th>
			<!-- 		<th><strong>密码</strong></th> -->
			<th><strong>姓名</strong>
			</th>
			<th><strong>性别</strong>
			</th>
			<th><strong>院系</strong>
			</th>
			<th><strong>手机</strong>
			</th>
			<th><strong>QQ</strong>
			</th>
			<th><strong>邮箱</strong>
			</th>
			<th><strong>操作</strong>
			</th>
		</tr>
		<c:forEach var="c" items="${pb.beanList}">
			<%--提取request域中的数据 --%>
			<tr>
				<td><strong>${c.user_id}</strong>
				</td>
				<!-- 		<td><strong>${c.user_password}</strong></td> -->
				<td><strong>${c.user_name}</strong>
				</td>
				<td><strong>${c.user_sex}</strong>
				</td>
				<td><strong>${c.user_academy}</strong>
				</td>
				<td><strong>${c.user_phone}</strong>
				</td>
				<td><strong>${c.user_qq}</strong>
				</td>
				<td><strong>${c.user_email}</strong>
				</td>
				<td><a target="main"
					href="<c:url value='userservlet?method=preEdit&&user_id=${c.user_id}'/>">编辑</a>
					<a href="<c:url value='userservlet?method=deleteUser&&user_id=${c.user_id}'/>">删除</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<%-- 
给出分页相差的链接
 --%>
		第${pb.pc }页/共${pb.tp }页 <a href="${pb.url }&pc=1">首页</a>
		<c:if test="${pb.pc > 1 }">
			<a href="${pb.url }&pc=${pb.pc-1}">上一页</a>
		</c:if>

		<%-- 计算begin、end --%>
		<c:choose>
			<%-- 如果总页数不足10页，那么把所有的页数都显示出来！ --%>
			<c:when test="${pb.tp <= 10 }">
				<c:set var="begin" value="1" />
				<c:set var="end" value="${pb.tp }" />
			</c:when>
			<c:otherwise>
				<%-- 当总页数>10时，通过公式计算出begin和end --%>
				<c:set var="begin" value="${pb.pc-5 }" />
				<c:set var="end" value="${pb.pc+4 }" />
				<%-- 头溢出 --%>
				<c:if test="${begin < 1 }">
					<c:set var="begin" value="1" />
					<c:set var="end" value="10" />
				</c:if>
				<%-- 尾溢出 --%>
				<c:if test="${end > pb.tp }">
					<c:set var="begin" value="${pb.tp - 9 }" />
					<c:set var="end" value="${pb.tp }" />
				</c:if>
			</c:otherwise>
		</c:choose>
		<%-- 循环遍历页码列表 --%>
		<c:forEach var="i" begin="${begin }" end="${end }">
			<c:choose>
				<c:when test="${i eq pb.pc }">
			[${i }]
		</c:when>
				<c:otherwise>
					<a href="${pb.url }&pc=${i}">[${i }]</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>


		<c:if test="${pb.pc < pb.tp }">
			<a href="${pb.url }&pc=${pb.pc+1}">下一页</a>
		</c:if>
		<a href="${pb.url }&pc=${pb.tp}">尾页</a>
	</center>
</body>
</html>
