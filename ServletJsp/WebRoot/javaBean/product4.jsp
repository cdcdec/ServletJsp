<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 导入引用的bean -->
<jsp:useBean id="product" class="jspjavabean.pojo.Product" scope="page"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>jsp利用表达式设置Bean属性2</title>
  </head>
  
  <body>
      <!-- 设置产品名称 -->
      <jsp:setProperty name="product" property="product_name"  value="struts开发教程"/>
      <br/>getProperty 产品名称是：
      <!-- 获取产品名称 -->
      <jsp:getProperty name="product" property="product_name"/>
      <br/>产品名称是：
      <%=product.getProduct_name() %>
      <!-- 设置产品编号 -->
      <jsp:setProperty name="product" property="product_id"  value="111100123689"/>
      <br/>getProperty 产品编号是：
      <jsp:getProperty name="product" property="product_id"/>
      <br/>产品编号是：
      <!-- 获取产品编号 -->
      <%=product.getProduct_id() %>
      <!-- 设置产品价格 -->
      <%
      	double price = 68.23;
       %>
      <jsp:setProperty name="product" property="price"  value="<%=price+23.67 %>"/>
      <br/>getProperty 产品价格是：
      <jsp:getProperty name="product" property="price"/>
      <br/>产品价格是：
      <!-- 获取产品价格 -->
      <%=product.getPrice() %>
      <!-- 设置产品信息 -->
      <jsp:setProperty name="product" property="info"  value="struts开发教程是一本介绍，如何使用Struts的专业书籍......"/>
      <br/>getProperty 产品信息是：
      <jsp:getProperty name="product" property="info"/>
      <br/>产品信息是：
      <!-- 获取产品信息 -->
      <%=product.getInfo() %>
  </body>
</html>
