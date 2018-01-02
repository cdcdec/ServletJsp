<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>jdbc</title>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  
    <!-- jdbc -->
    <P><a href="MySqlJdbc">MySqlJdbc</a></P>
    <P><a href="OracleJdbc">OracleJdbc</a></P>
    <P><a href="SqlliteCreateTable">SqlliteCreateTable</a></P>
    <P><a href="SqliteInsert">SqliteInsert</a></P>
    <P><a href="SqliteSelect">SqliteSelect</a></P>
    <P><a href="SqliteUpdate">SqliteUpdate</a></P>
    <P><a href="SqliteDelete">SqliteDelete</a></P>
    
    <P><a href="jdbc/addCustomers.jsp">addCustomers.jsp</a></P>
    <P><a href="jdbc/listCustomers.jsp">listCustomers.jsp</a></P>
    
    
  </body>
</html>
