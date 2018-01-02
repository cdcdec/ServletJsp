<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
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
				Class.forName("com.mysql.jdbc.Driver");       //注册数据库
				con = DriverManager.getConnection(            //获取数据库连接
				"jdbc:mysql://localhost:3306/order","root","root");
				st = con.createStatement();                  //获取Statement
				rs = st.executeQuery("select * from customers");//执行查询，返回结果集
		 %>
		 <a href="jdbc/addCustomers.jsp">新增客户信息</a>
		 <br/>
		 <br/>
		<table border="1" width="100%" cellpadding="2" cellspacing="1">
			<tr>
				<td>客户id</td>
				<td>客户名称</td>
				<td>客户地址</td>
				<td>客户所在城市</td>
				<td>客户所在省份</td>
				<td>客户所在国家</td>
				<td>联系人</td>
				<td>email</td>
			</tr>
		    <%
				while(rs.next()){                                   //遍历结果集ResultSet
					String cust_id = rs.getString("cust_id");                       //获取ID
					String cust_name  = rs.getString("cust_name");            //获取姓名
					String cust_address = rs.getString("cust_address");                     //获取年龄
					String cust_city  = rs.getString("cust_city");              //获取性别
					
					String cust_state = rs.getString("cust_state");//获取备注
					String cust_country = rs.getString("cust_country");
					String cust_contact = rs.getString("cust_contact");
					String cust_email = rs.getString("cust_email");
					
					out.println("<tr>");
					out.println("<td >"+cust_id+"</td>");
					out.println("<td >"+cust_name+"</td>");	 
					out.println("<td >"+cust_address+"</td>");
					out.println("<td >"+cust_city+"</td>");
					out.println("<td >"+cust_state+"</td>");
					out.println("<td >"+cust_country+"</td>");
					out.println("<td >"+cust_contact+"</td>");
					out.println("<td >"+cust_email+"</td>");
					out.println("<td><a href=\"modify.jsp?id="+cust_id+"\">修改</a>&nbsp;&nbsp;"+
					"<a href=\"delete.jsp?id="+cust_id+"\" onclick=\"return confirm('确定删除该记录？')\">删除</a></td>");
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
