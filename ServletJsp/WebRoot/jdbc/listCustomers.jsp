<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,jdbcconfig.JDBCConfig" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>list Customers</title>
    
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
			<h4>人员信息列表</h4>
		</center>
		<%
		    Connection con = null;
	        Statement st = null;
	        ResultSet rs = null;
	        try {
	            //注册数据库
				Class.forName(JDBCConfig.MYSQL_CLASS);       
				//获取数据库连接
				con = DriverManager.getConnection(JDBCConfig.MYSQL_CONNECTION,JDBCConfig.MYSQL_CONNECTION_NAME,JDBCConfig.MYSQL_CONNECTION_PASSWORD);
				//获取Statement
				st = con.createStatement(); 
				//执行查询，返回结果集                 
				rs = st.executeQuery("select * from customers");
		 %>
		 <a href="jdbc/addCustomers.jsp">新增人员信息</a>
		 <br/>
		 <br/>
		<table border="1" width="100%" cellpadding="2" cellspacing="1">
			<tr>
				<td>id</td>
				<td>名称</td>
				<td>地址</td>
				<td>城市</td>
				<td>省份</td>
				<td>邮编</td>
				<td>国家</td>
				<td>联系人</td>
				<td>电子邮箱</td>
				<td>操作</td>
			</tr>
		    <%
				while(rs.next()){                                   
					String cust_id = rs.getString("cust_id");
		    			String cust_name = rs.getString("cust_name");
		    			String cust_address = rs.getString("cust_address");
		    			String cust_city = rs.getString("cust_city");
		    			String cust_state = rs.getString("cust_state");
		    			String cust_zip = rs.getString("cust_zip");
		    			String cust_country = rs.getString("cust_country");
		    			String cust_contact = rs.getString("cust_contact");
		    			String cust_email = rs.getString("cust_email");

		    			out.println("<tr>");
		    			out.println("<td >" + cust_id + "</td>");
		    			out.println("<td >" + cust_name + "</td>");
		    			out.println("<td >" + cust_address + "</td>");
		    			out.println("<td >" + cust_city + "</td>");
		    			out.println("<td >" + cust_state + "</td>");
		    			out.println("<td >" + cust_zip + "</td>");
		    			out.println("<td >" + cust_country + "</td>");
		    			out.println("<td >" + cust_contact + "</td>");
		    			out.println("<td >" + cust_email + "</td>");
		    			out.println("<td><a href=\"jdbc/modifyCustomer.jsp?id=" + cust_id + "\">修改</a>&nbsp;&nbsp;"
		    					+ "<a href=\"jdbc/deleteCustomer.jsp?id=" + cust_id
		    					+ "\" onclick=\"return confirm('确定删除该记录？')\">删除</a></td>");
		    			out.println("</tr>");
				}
		     %>
		</table>
		
		<%
		     } catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				try {//记住关闭连接
					rs.close();
					st.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		 %>
	</BODY>
</html>
