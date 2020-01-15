<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>列出所有</title>
</head>
<body>
<body background = "E:\桌面\Assassin-s-Creed-3-blue-style_1440x900.jpg">
<center>
	<h1>校园物资管理系统</h1>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>编码</th>
			<th>名称</th>
			<th>价格</th>
			<th>类型</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${arr}" var="s" varStatus="status">
			<tr>
				<td id="check${status.count }">${s.id }</td>
				<td>${s.code }</td>
				<td>${s.name }</td>
				<td>${s.price }</td>
				<td>${s.type }</td>
				<td><a href="delete?id=${s.id }">删除</a></td>
				<td><a href="update?id=${s.id }">修改</a></td>
			</tr>
		</c:forEach>
	</table>
	</center>
	<input type="button" value="添加" onClick="showOrHide();"/>
	
	<div style="display:none;" id="insertPanel">
	<form action="insert" method="post">
		<input type="text" name="code" /> <input type="text" name="name" />
		<input type="text" name="type" /> <input type="text" name="price" />
		<input type="submit" />
	</form>
	</div>
	<script>
		function showOrHide()
		{
			var z=document.getElementById("insertPanel");
			if(z.style.display=='none')
				z.style.display="block";
			else
				z.style.display="none";
		}
	</script>
</body>
</html>