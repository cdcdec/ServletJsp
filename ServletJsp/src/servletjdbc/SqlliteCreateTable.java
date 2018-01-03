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
 * Servlet implementation class SqlliteCreateTable
 */
@WebServlet(name="SqlliteCreateTable",urlPatterns={"/SqlliteCreateTable"})
public class SqlliteCreateTable extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req,resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection con = null;
        Statement st = null;
        resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		out .println("<!DOCTYPE HTML>");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>Sqlite3</TITLE></HEAD>");
		out.println("  <BODY>");
        try {
        	//注册数据库
			Class.forName(JDBCConfig.SQLITE_CLASS);                            
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			out.println("<p>驱动程序加载错误</p>");
			System.out.println("驱动程序加载错误");
			out.println("</table></center>"); 
			out.println("  </BODY>");
			out.println("</HTML>");
			out.flush();
			out.close();
		}
        try {
			con = DriverManager.getConnection(JDBCConfig.SQLITE_CONNECTION);
			//获取Statement
			st = con.createStatement();
			String sql = "CREATE TABLE IF NOT EXISTS COMPANY " +
	                   "(ID INT PRIMARY KEY     NOT NULL," +
	                   " NAME           TEXT    NOT NULL, " + 
	                   " AGE            INT     NOT NULL, " + 
	                   " ADDRESS        CHAR(50), " + 
	                   " SALARY         REAL)"; 
			st.executeUpdate(sql);
			st.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println("Table created error,"+e.getLocalizedMessage());
			out.println("</table></center>"); 
			out.println("  </BODY>");
			out.println("</HTML>");
			out.flush();
			out.close();
			//e.printStackTrace();
		}
        out.println("Table created successfully");
        out.println("</table></center>"); 
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
		
	}
	
	

}
