<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,jdbcconfig.JDBCConfig" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>删除客户信息</title>
    
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
    <%
		    Connection con = null;
	        Statement st = null;
	        try {
	        	Class.forName(JDBCConfig.MYSQL_CLASS);          //注册数据库
				con = DriverManager.getConnection(                 //获取数据库连接
					JDBCConfig.MYSQL_CONNECTION,JDBCConfig.MYSQL_CONNECTION_NAME,JDBCConfig.MYSQL_CONNECTION_PASSWORD);
				st = con.createStatement();                  //获取Statement
				request.setCharacterEncoding("UTF-8");
                String id = request.getParameter("id");       //获取页面参数id
                String sql = "delete from customers where cust_id='"+id+"'"; //删除指定人员
		        int  result = st.executeUpdate(sql); 
		     } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				//记住关闭连接
				try {
					st.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		 %>
		 <a href="jdbc/listCustomers.jsp">返回人员信息列表</a>
		 <br/>
  </body>
</html>
