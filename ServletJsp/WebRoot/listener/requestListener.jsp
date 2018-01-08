<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>使用RequestListener监听器</title>
  </head>
  
   <body>
                使用RequestListener监听器<br/>
       <c:set value="zhangsan" var="username" scope="request"/>
       姓名为：<c:out value="${requestScope.username}"/>
     <c:remove var="username" scope="request"/>                
  </body>
</html>
