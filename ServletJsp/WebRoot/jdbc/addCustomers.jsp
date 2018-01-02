<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>add customer </title>
    
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
   <form action="${pageContext.request.contextPath}/servletjdbc/MySqlAddCustomers" method="post">
	      <table>
	            <tr>
	                <td>客户id</td>        
	                <td><input name="cust_id"/></td>     
	            </tr>
	            <tr>
	                <td>客户名称</td>        
	                <td><input name="cust_name"/></td>  
	            </tr>
	            <tr>
	                <td>客户地址</td>        
	                <td><input name="cust_address"/></td>    
	            </tr>
	            <tr>
	                <td>客户所在城市</td>      
	                <td><input name="cust_city"/></td>     
	            </tr>
	            <tr>
	                <td>客户所在省份</td>        
	                <td><input name="cust_state"/></td>    
	            </tr>
	            <tr>
	                <td>客户所在国家</td>        
	                <td><input name="cust_country"/></td>    
	            </tr>
	            <tr>
	                <td>联系人</td>        
	                <td><input name="cust_contact"/></td>    
	            </tr>
	            <tr>
	                <td>email</td>        
	                <td><input name="cust_email"/></td>    
	            </tr>
	            <tr>
	                <td colspan="2">
	                   <input type="submit" value="提交"/>
	                </td>
	            </tr>
	       </table>
      </form>
  </body>
</html>
