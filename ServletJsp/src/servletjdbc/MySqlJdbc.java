package servletjdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbcconfig.JDBCConfig;

/**
 * Servlet implementation class JdbcServlet
 */
@WebServlet(name = "MySqlJdbc", 
        urlPatterns = { "/MySqlJdbc" })
public class MySqlJdbc extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        try {
        	//注册数据库
			Class.forName(JDBCConfig.MYSQL_CLASS);                            
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("驱动程序加载错误");
		}
		try {
			//获取数据库连接
			con = DriverManager.getConnection(JDBCConfig.MYSQL_CONNECTION);
			//获取Statement
			st = con.createStatement();
			//执行查询，返回结果集
			rs = st.executeQuery("select * from customers");                       
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out .println("<!DOCTYPE HTML>");
			out.println("<HTML>");
			out.println("  <HEAD><TITLE>列出客户信息表</TITLE></HEAD>");
			out.println("  <BODY>");
			out.println("<center><h4>人员信息列表</h4>");
			out.println("  <table border=\"1\" width=\"100%\" cellpadding=\"2\" cellspacing=\"1\">");
			out.println("<tr>");
			out.println("<td>选择</td>");
			out.println("<td>客户姓名</td>");
			out.println("<td>客户地址</td>");
			out.println("<td>客户城市</td>");
			out.println("<td>客户省份</td>");
			out.println("<td>客户右边</td>");
			out.println("</tr>");
			while(rs.next()){                                      //遍历结果集ResultSet
				String  cust_id = rs.getString("cust_id");                          //获取ID
				String cust_name  = rs.getString("cust_name");               //获取姓名
				String cust_address = rs.getString("cust_address");                        //获取年龄
				String cust_city  = rs.getString("cust_city");                 //获取性别
				String cust_state  = rs.getString("cust_state");           //获取生日
				String cust_zip = rs.getString("cust_zip");  //获取备注
				out.println("<tr>");
				out.println("<td><input type=\"checkbox\" name=\"id\" value=\""+cust_id+"\"></td>");
				out.println("<td >"+cust_name+"</td>");
				out.println("<td >"+cust_address+"</td>");	 
				out.println("<td >"+cust_city+"</td>");
				out.println("<td >"+cust_state+"</td>");
				out.println("<td >"+cust_zip+"</td>");
			    out.println("</tr>");
			}
			out.println("</table></center>"); 
			out.println("  </BODY>");
			out.println("</HTML>");
			out.flush();
			out.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try { //记住关闭连接
				rs.close();
				st.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	

}
