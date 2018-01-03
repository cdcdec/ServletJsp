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
 * Servlet implementation class SqliteInsert
 */
@WebServlet(name = "SqliteInsert", urlPatterns = { "/SqliteInsert" })
public class SqliteInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection c = null;
		Statement stmt = null;
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML>");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>sqlite3 insert</TITLE></HEAD>");
		out.println("  <BODY>");

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

		int count = 0;
		try {
			stmt = c.createStatement();
			String sql0 = "select count(*) totalCount from COMPANY";
			ResultSet rs = stmt.executeQuery(sql0);
			count = rs.getInt("totalCount");
			out.println("<p>数据表当前记录数:" + count + "</p>");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.println("<p>select database error," + e.getLocalizedMessage() + "</p>");
			out.println("  </BODY>");
			out.println("</HTML>");
			out.flush();
			out.close();
		}
		if (count > 0) {
			out.println("<p>数据表已有数据</p>");
		} else {
			try {
				String sql = "INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY) "
						+ "VALUES (1, 'Paul', 32, 'California', 20000.00 );";
				stmt.executeUpdate(sql);

				sql = "INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY) "
						+ "VALUES (2, 'Allen', 25, 'Texas', 15000.00 );";
				stmt.executeUpdate(sql);

				sql = "INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY) "
						+ "VALUES (3, 'Teddy', 23, 'Norway', 20000.00 );";
				stmt.executeUpdate(sql);

				sql = "INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY) "
						+ "VALUES (4, 'Mark', 25, 'Rich-Mond ', 65000.00 );";
				stmt.executeUpdate(sql);
				out.println("<p>Records created successfully</p>");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				out.println("<p>Records created error," + e.getLocalizedMessage() + "</p>");
				out.println("  </BODY>");
				out.println("</HTML>");
				out.flush();
				out.close();
			}
		}
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
		try {
			stmt.close();
			c.commit();
			c.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
