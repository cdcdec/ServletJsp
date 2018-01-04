<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加商品</title>
    
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
    <form action="${pageContext.request.contextPath}/goods" method="post">
    <center>
	      <table>
	            <tr>
	                <td>商品名称</td>        
	                <td><input name="gname"/></td>     
	            </tr>
	            <tr>
	                <td>商品照片</td>        
	                <td><input name="gphoto"/></td>  
	            </tr>
	            <tr>
	                <td>商品类别</td>        
	                <td><input name="kinds"/></td>    
	            </tr>
	            <tr>
	                <td>商品型号</td>      
	                <td><input name="types"/></td>     
	            </tr>
	            <tr>
	                <td>商品生产者</td>        
	                <td><input name="producer"/></td>    
	            </tr>
	            <tr>
	                <td>商品价格</td>        
	                <td><input name="price"/></td>    
	            </tr>
	            <tr>
	                <td>商品运费</td>        
	                <td><input name="carriage"/></td>    
	            </tr>
	            <tr>
	                <td>商品生产日期</td>        
	                <td><input name="pdate"/></td>    
	            </tr>
	            <tr>
	                <td>商品生产地址</td>        
	                <td><input name="paddress"/></td>    
	            </tr>
	            <tr>
	                <td>商品描述</td>        
	                <td><input name="described"/></td>    
	            </tr>
	            <tr>
	                <td colspan="2">
	                   <input type="submit" value="提交"/>
	                </td>
	            </tr>
	       </table>
	       </center>
	       <input type="hidden" name="action" value="add-good"/> 
      </form>
  </body>
</html>
