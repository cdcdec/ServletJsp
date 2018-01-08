package servletListener;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(
		urlPatterns = { "/LoginSeeeionListener" }, 
		loadOnStartup = 0, 
		name = "Login", 
		displayName = "demo", 
		initParams = { 
			@WebInitParam(name = "success", value = "listener/loginSessionListenerSucess.jsp") 
		}
)
public class LoginSessionListenerServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 3139364437816843147L;
	Map<String, String> users;

	public LoginSessionListenerServlet() {
		users = new HashMap<String, String>();
		users.put("zhangsan", "123456");
		users.put("lisi", "123456");
		users.put("wangwu", "123456");
		users.put("zhaoliu", "123456");
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userId = request.getParameter("userId");
		String passwd = request.getParameter("passwd");
		if (users.containsKey(userId) && users.get(userId).equals(passwd)) {
			request.getSession().setAttribute("user", userId);
			request.getSession().setAttribute("count",
					LoginSessionListener.getCount());
		}
		String success = getInitParameter("success");
		response.sendRedirect(success);
	}

}
