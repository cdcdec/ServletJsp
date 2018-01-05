<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="eldemo.Users" %>
<!DOCTYPE HTML>
<html>
  <head>
    <title>EL标签访问Java Bean中的属性</title>
  </head>
  <body>
      <%
      	request.setCharacterEncoding("UTF-8");
      	response.setCharacterEncoding("UTF-8");
         Users user = new Users();
         user.setAddress("中国");
         user.setAge(20);
         user.setName("王五");
         user.setAddaa_re("sadfa");
         request.setAttribute("user",user);
       %>
    用户信息：${user }<br/>
    用户年龄：${user.age } ，用户姓名：${user.addaa_re}
  </body>
</html>
