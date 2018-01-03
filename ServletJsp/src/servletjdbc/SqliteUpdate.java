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
 * Servlet implementation class SqliteUpdate
 */
@WebServlet(name = "SqliteUpdate", urlPatterns = { "/SqliteUpdate" })
public class SqliteUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML>");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>sqlite3 update</TITLE></HEAD>");
		out.println("  <BODY>");
		Connection c = null;
		Statement stmt = null;
		try {
			Class.forName(JDBCConfig.SQLITE_CLASS);
			c = DriverManager.getConnection(JDBCConfig.SQLITE_CONNECTION);
			c.setAutoCommit(false);
			out.println("<p>Opened database successfully</p>");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			out.println("<p>Opened database error," + e.getLocalizedMessage() + "</p>");
			out.println("  </BODY>");
			out.println("</HTML>");
			out.flush();
			out.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println("<p>Opened database error," + e.getLocalizedMessage() + "</p>");
			out.println("  </BODY>");
			out.println("</HTML>");
			out.flush();
			out.close();
		}

		try {
			stmt = c.createStatement();
			String sql = "UPDATE COMPANY set address = '加里福尼亚'   where ID=1;";
			stmt.executeUpdate(sql);
		    c.commit();
			ResultSet rs = stmt.executeQuery("SELECT * FROM COMPANY;");
			out.println("  <table border=\"1\" width=\"100%\" cellpadding=\"2\" cellspacing=\"1\">");
			out.println("<tr>");
			out.println("<td>ID</td>");
			out.println("<td>NAME</td>");
			out.println("<td>AGE</td>");
			out.println("<td>ADDRESS</td>");
			out.println("<td>SALARY</td>");
			out.println("</tr>");
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				int age = rs.getInt("age");
				String address = rs.getString("address");
				float salary = rs.getFloat("salary");
				out.println("<td >" + id + "</td>");
				out.println("<td >" + name + "</td>");
				out.println("<td >" + age + "</td>");
				out.println("<td >" + address + "</td>");
				out.println("<td >" + salary + "</td>");
				out.println("</tr>");
			}
			rs.close();
			stmt.close();
			c.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println("<p>error," + e.getLocalizedMessage() + "</p>");
			out.println("  </BODY>");
			out.println("</HTML>");
			out.flush();
			out.close();
		}

	}


}
