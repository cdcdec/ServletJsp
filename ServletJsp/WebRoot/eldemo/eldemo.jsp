<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>EL表达式</title>
    
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
	    <table border="1" width="100%">
	    	<tr>
	    		<td><a href="eldemo/ex10_2.jsp">访问演示2</a>
	    		</td>
	    		<td><a href="eldemo/ex10_3.jsp">访问演示3</a>
	    		</td>
	    		<td><a href="eldemo/ex10_4.jsp">访问演示4</a>
	    		</td>
	    	</tr>
	    	<tr>
	    		<td><a href="eldemo/ex10_5.jsp?sampleSingleVal=2">访问演示5</a>
	    		</td>
	    		<td><a href="eldemo/ex10_6.jsp">访问演示6</a>
	    		</td>
	    		<td><a href="eldemo/el_demo_index.jsp">访问演示7</a>
	    		</td>
	    	</tr>
	    </table>
    </center>
  </body>
</html>
