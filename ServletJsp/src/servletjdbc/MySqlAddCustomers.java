package servletjdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdbcconfig.JDBCConfig;

/**
 * Servlet implementation class MySqlAdd
 */
@WebServlet("/MySqlAdd")
public class MySqlAddCustomers extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
        String cust_id = request.getParameter("cust_id");
        String cust_name = request.getParameter("cust_name");
        String cust_address = request.getParameter("cust_address");
        String cust_city = request.getParameter("cust_city");
        String cust_state = request.getParameter("cust_state");
        String cust_country = request.getParameter("cust_country");
        String cust_contact = request.getParameter("cust_contact");
        String cust_email = request.getParameter("cust_email");
        String sql = "insert into customers(cust_id,cust_name,cust_address,cust_city,cust_state,cust_country,cust_contact,cust_email) "+
                     "values('"+cust_id+"','"+cust_name+"','"+cust_address+"','"+cust_city+"','"+cust_state+"','"+cust_country+"','"+cust_contact+"','"+cust_email+"')";
        Connection con = null;
        Statement st = null;
        int  result = 0;
        try {
			Class.forName(JDBCConfig.MYSQL_CLASS);//注册数据库
			con = DriverManager.
			getConnection(JDBCConfig.MYSQL_CONNECTION);//获取数据库连接
			st = con.createStatement();            //获取Statement
			result = st.executeUpdate(sql);        //执行查询，返回结果集
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out .println("<!DOCTYPE HTML>");
			out.println("<HTML>");
			out.println("  <HEAD><TITLE>列出人员信息表</TITLE></HEAD>");
			out.println("  <BODY>");
			out.println("");
			out.println("<a href=\""+request.getContextPath()+"jdbc/listCustomers.jsp\">返回人员列表</a>");
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
				st.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} 
	}

}
