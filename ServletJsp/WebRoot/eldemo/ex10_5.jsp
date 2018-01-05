<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>测试EL隐含对象页面</title>
  </head>
  <body>
  <form action="ex10_5_result.jsp" method="post">
  <fieldset>
    <legend>测试EL隐含对象</legend>
    <input type="text" name="sampleVal" value="1"/>
    <input type="text" name="sampleVal" value="16"/>
    <input type="text" name="sampleVal" value="17"/>
    <input type="text" name="sampleSingleVal" value="single"/>
  </fieldset>
  
  <fieldset>
    <legend>测试EL隐含对象</legend>
    <input type="text" name="sample1" value=${header['user-agent']}/>
  </fieldset>
  <input type="submit" value="submit"/>
</form>
  </body>
</html>
