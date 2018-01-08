package servletfilter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(
		urlPatterns = { "/TestFilter" }, 
		loadOnStartup = 0, 
		name = "testFilterServlet" 
	)
public class TestFilterServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 4014399327907577715L;
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("2222");
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out .println("<!DOCTYPE HTML>");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>测试内容输出过滤</TITLE></HEAD>");
		out.println("  <BODY>");
		out.println("dfdasf <br/>色情  <br/>情色  <br/>赌博");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

}
