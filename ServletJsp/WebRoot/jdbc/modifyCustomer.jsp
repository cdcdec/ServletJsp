<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*,jdbcconfig.JDBCConfig"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>修改客户信息</title>

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
		Connection connection = null;
		Statement statement = null;
		ResultSet result = null;
		try {
			//注册数据库
			Class.forName(JDBCConfig.MYSQL_CLASS);
			// 获取数据库连接
			connection = DriverManager.
			getConnection(JDBCConfig.MYSQL_CONNECTION,JDBCConfig.MYSQL_CONNECTION_NAME,JDBCConfig.MYSQL_CONNECTION_PASSWORD);//获取数据库连接
			//获取Statement
			statement = connection.createStatement();
			request.setCharacterEncoding("UTF-8");
			//获取修改人员的id
			String id = request.getParameter("id");
			//查询该人员的sql语句
			String sql = "select *  from customers where cust_id='"+id+"';";
			result = statement.executeQuery(sql);
			if (result.next()) {
				String cust_id = result.getString("cust_id");
				String cust_name = result.getString("cust_name");
				String cust_address = result.getString("cust_address");
				String cust_city = result.getString("cust_city");
				String cust_state = result.getString("cust_state");
				String cust_country = result.getString("cust_country");
				String cust_zip = result.getString("cust_zip");
				String cust_contact = result.getString("cust_contact");
				String cust_email = result.getString("cust_email");
				 //往页面传递人员信息参数
	            request.setAttribute("cust_id",cust_id);
	            request.setAttribute("cust_name",cust_name);
	            request.setAttribute("cust_address",cust_address);
	            request.setAttribute("cust_city",cust_city);
	            request.setAttribute("cust_state",cust_state);
	            request.setAttribute("cust_country",cust_country);
	            request.setAttribute("cust_zip",cust_zip);
	            request.setAttribute("cust_contact",cust_contact);
	            request.setAttribute("cust_email",cust_email);
	            RequestDispatcher rd = request.getRequestDispatcher("updateCustomers.jsp");
	            rd.forward(request,response);
			} else {
				out.println("没有找到id为" + id + "的人员记录");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {//记住关闭数据库连接
				result.close();
				statement.close();
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	%>
</body>
</html>
