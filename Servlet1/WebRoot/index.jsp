<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
  <!--servlert1  -->
    <P><a href="welcome">WelcomeServlet</a></P>
    <P><a href="generic">GenericServletDemoServlet</a></P>
    <P><a href="my">MyServlet</a></P>
    <P><a href="servletConfigDemo">ServletConfigDemoServlet</a></P>
    <P><a href="form">FormServlet</a></P>
    
    <!--servlet2  -->
    <P><a href="simple">SimpleServlet</a></P>
    <P><a href="welcome2">WelcomeServlet2</a></P>
    
    <!-- servlet session -->
    <P><a href="cookieClass">CookieClassServlet</a></P>
    <!-- <P><a href="cookieInfo">CookieInfoServlet</a></P>
    <P><a href="preference">PreferenceServlet</a></P> -->
    
    
    
    <P><a href="customer">CustomerServlet_customer</a></P>
    <!-- <P><a href="editCustomer">CustomerServlet_editCustomer</a></P>
    <P><a href="updateCustomer">CustomerServlet_updateCustomer</a></P> -->
    
    
    <P><a href="products">ShoppingCartServlet_products</a></P>
    <!-- <P><a href="viewProductDetails">ShoppingCartServlet_viewProductDetails</a></P>
    <P><a href="addToCart">ShoppingCartServlet_addToCart</a></P>
    <P><a href="viewCart">ShoppingCartServlet_viewCart</a></P> -->
  </body>
</html>
