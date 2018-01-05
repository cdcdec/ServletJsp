<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>    	
<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <title>jstl index</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <body>
  <table border="1" width="100%">
			<tr>
				<td><a href="jstl/jstl1.jsp">JSTL 基础</a></td>
				<td><a href="eldemo/ex10_2.jsp">EL标签访问JSP中不同域的对象</a></td>
				<td><a href="eldemo/ex10_3.jsp">EL标签访问Java Bean中的属性</a></td>
			</tr>
			<tr>
				<td><a href="eldemo/ex10_4.jsp">EL标签运算符示例</a></td>
				<td><a href="eldemo/ex10_5.jsp">EL隐含对象</a></td>
				<td><a href="eldemo/el_object.jsp">EL隐含对象2</a></td>
			</tr>
		</table>
 
  </body>
</html>