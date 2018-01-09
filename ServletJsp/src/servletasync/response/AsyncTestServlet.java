package servletasync.response;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/AsyncTestServlet" }, asyncSupported = true)
public class AsyncTestServlet extends HttpServlet {
	 
	/**
	 * 
	 */
	private static final long serialVersionUID = 4272689866782426548L;

	public void doGet(HttpServletRequest request,
			HttpServletResponse response)throws ServletException, IOException {

		try {
			//隔1秒钟调用一次客户端方法
			for (int i = 0; i < 20; i++) {
				final String str = "window.parent.update(\""
						+ String.valueOf("内容--"+i) + "\");";
				ClientService.getInstance().callClient(str);
				Thread.sleep(2 * 1000);
				if (i == 10) {
					break;
				}
			}
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
}
