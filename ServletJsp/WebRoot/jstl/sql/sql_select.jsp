<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>sql_select.jsp</title>

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
	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/order?useSSL=false" user="root"
		password="root" />

	<sql:query dataSource="${snapshot}" var="result">
		SELECT * from customers;
	</sql:query>

	<table border="1" width="100%">
		<tr>
			<th>cust_id</th>
			<th>cust_name</th>
			<th>cust_address</th>
			<th>cust_city</th>
		</tr>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.cust_id}" /></td>
				<td><c:out value="${row.cust_name}" /></td>
				<td><c:out value="${row.cust_address}" /></td>
				<td><c:out value="${row.cust_city}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
