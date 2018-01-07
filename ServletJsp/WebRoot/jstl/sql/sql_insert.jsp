<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>sql_insert.jsp</title>

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
		SELECT  max(cust_id) as max_id from customers;
	</sql:query>
<!-- 查询最大id值 -->
	<c:forEach var="row" items="${result.rows}">
		<c:set var="max_id" scope="page" value="${row.max_id }" />
	</c:forEach>
	<!-- 将id值转换为数字 -->
	<fmt:parseNumber var="i"  integerOnly="true" 
                       type="number" value="${max_id}" />
          
                       
<c:set var="cust_id"  value="${i +1}" > </c:set>
<c:set  var="cust_name"  value="${i+1}${'_cust_name' }" ></c:set>
<c:set  var="cust_address"  value="${i+1}${'_cust_address' }" >  </c:set>
<c:set   var="cust_city"   value="${i+1}${'_cust_city' }" > </c:set>
<c:set   var="cust_state"   value="北京" > </c:set>
<c:set   var="cust_zip"    value="100000" > </c:set>
<c:set   var="cust_country"   value="${i+1 }${'_cust_country' }" > </c:set>
<c:set   var="cust_contact"   value="${i+1}${'_cust_contact' }"  > </c:set>
<c:set   var="cust_email"    value="${i+1}${'_cust_email' }" > </c:set>


<sql:update  dataSource="${snapshot}" >
insert into customers values("${cust_id }", "${cust_name }", "${cust_address }",  "${cust_city }",  "${cust_state }",  "${cust_zip }",  "${cust_country }",  "${cust_contact }",  "${cust_email }" );

</sql:update>
	
	<sql:query dataSource="${snapshot}"   var="resultSelect">
		SELECT  * from customers;
	</sql:query>
	
	<table border="1" width="100%">
		<tr>
			<th>cust_id</th>
			<th>cust_name</th>
			<th>cust_address</th>
			<th>cust_city</th>
		</tr>

<c:forEach var="rowSe" items="${resultSelect.rows}">
		<tr>
				<td><c:out value="${rowSe.cust_id}" /></td>
				<td><c:out value="${rowSe.cust_name}" /></td>
				<td><c:out value="${rowSe.cust_address}" /></td>
				<td><c:out value="${rowSe.cust_city}" /></td>
			</tr>
	</c:forEach>
	</table>
</body>
</html>
