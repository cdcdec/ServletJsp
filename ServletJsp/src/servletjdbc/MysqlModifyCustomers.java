package servletjdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbcconfig.JDBCConfig;

/**
 * Servlet implementation class MysqlModifyCustomers
 */
@WebServlet("/MysqlModifyCustomers")
public class MysqlModifyCustomers extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String cust_id = request.getParameter("cust_id");
		String cust_name = request.getParameter("cust_name");
		String cust_address = request.getParameter("cust_address");
		String cust_city = request.getParameter("cust_city");
		String cust_state = request.getParameter("cust_state");
		String cust_zip = request.getParameter("cust_zip");
		String cust_country = request.getParameter("cust_country");
		String cust_contact = request.getParameter("cust_contact");
		String cust_email = request.getParameter("cust_email");
		
        String sql ="update customers  set cust_name = ? ,cust_address = ?,cust_city = ?,cust_state = ?,cust_zip = ?,cust_country = ?,cust_contact = ?,cust_email = ? where cust_id = ?";
        Connection con = null;
        PreparedStatement prest = null;
        int  result = 0;
        try {
			Class.forName(JDBCConfig.MYSQL_CLASS);            //注册数据库
			con = DriverManager.getConnection(                 //获取数据库连接
					JDBCConfig.MYSQL_CONNECTION,JDBCConfig.MYSQL_CONNECTION_NAME,JDBCConfig.MYSQL_CONNECTION_PASSWORD);
			prest = con.prepareStatement(sql);                 //获取PreparedStatement,并且预编译SQL语句
			prest.setString(1, cust_name);            //设定第2个参数
			prest.setString(2, cust_address);                           //设定第3个参数
			prest.setString(3, cust_city);                            //设定第4个参数
			prest.setString(4, cust_state);
			prest.setString(5, cust_zip); 
			prest.setString(6, cust_country);             //设定第6个参数
			prest.setString(7, cust_contact); 
			prest.setString(8, cust_email); 
			prest.setString(9, cust_id); 
			result = prest.executeUpdate(); 
			
			//执行查询，返回结果集
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out .println("<!DOCTYPE HTML>");
			out.println("<HTML>");
			out.println("  <HEAD><TITLE>列出人员信息表</TITLE></HEAD>");
			out.println("  <BODY>");
			out.println("");
			out.println("<a href=\""+request.getContextPath()+"/jdbc/listCustomers.jsp\">返回人员列表</a>");
			out.println("  </BODY>");
			out.println("</HTML>");
			out.flush();
			out.close();
		 } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {//记住关闭连接
				prest.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} 
	}
	

}
