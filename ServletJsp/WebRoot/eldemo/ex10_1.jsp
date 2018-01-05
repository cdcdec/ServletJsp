<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>EL标签访问集合元素</title>
  </head>
  <body>
      <%
        Map<String,String> map2 = new HashMap();
		map2.put("a","hello world");
		map2.put("b","this is map");
		request.setAttribute("map2",map2);
		String str1="aa";
		String str2="aa";
       %>
  <center><h3>访问演示</h3></center>
  
  <center><p>a对应的值:${map2['a']}</p></center>
  <center><p>b对应的值:${map2.b}</p></center>
  <center><p>${str1==str2}</p></center>
    <center><p>\${postNum == null ? 0 : postNum}=${postNum == null ? 0 : postNum}</p></center>
  
  </body>
</html>
