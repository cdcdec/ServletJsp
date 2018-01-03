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
 * Servlet implementation class OracleJdbc
 */
@WebServlet(name = "OracleJdbc", 
urlPatterns = { "/OracleJdbc" })
public class OracleJdbc extends HttpServlet {
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
			Class.forName(JDBCConfig.ORACLE_CLASS);                           
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("驱动程序加载错误");
		}
		try {
			//获取数据库连接
			con = DriverManager.getConnection(JDBCConfig.ORACLE_CONNECTION,JDBCConfig.ORACLE_CONNECTION_NAME,JDBCConfig.MYSQL_CONNECTION_PASSWORD);
			//获取Statement
			st = con.createStatement();
			//执行查询，返回结果集
			rs = st.executeQuery("select userno,password,macno,TB_MCTM_USER_TERMINAL.TER_LOGINNO,TB_MCTM_USER_TERMINAL.TERMINALID from C_USERINFO,TB_MCTM_USER_TERMINAL where C_USERINFO.userno=TB_MCTM_USER_TERMINAL.userid and C_USERINFO.userno='testlaser'");                       
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
			out.println("<td>账号</td>");
			out.println("<td>密码</td>");
			out.println("<td>mac</td>");
			out.println("</tr>");
			while(rs.next()){                                      //遍历结果集ResultSet
				String  userno = rs.getString("userno");                          //获取ID
				String password  = rs.getString("password");               //获取姓名
				String macno = rs.getString("macno");                        //获取年龄
				out.println("<tr>");
				out.println("<td><input type=\"checkbox\" name=\"id\" value=\""+userno+"\"></td>");
				out.println("<td >"+userno+"</td>");
				out.println("<td >"+password+"</td>");	 
				out.println("<td >"+macno+"</td>");
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
