package servletListener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class LoginSessionListener implements HttpSessionListener {
	private static int count;// 统计数

	public static int getCount() {
		return count;
	}

	public void sessionCreated(HttpSessionEvent se) {
		LoginSessionListener.count++;
	}

	public void sessionDestroyed(HttpSessionEvent se) {
		LoginSessionListener.count--;
	}

}
