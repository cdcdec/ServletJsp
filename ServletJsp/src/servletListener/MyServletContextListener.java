package servletListener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.apache.log4j.Logger;
@WebListener
public class MyServletContextListener implements ServletContextListener,ServletContextAttributeListener{

	private static Logger log = Logger.getLogger(MyServletContextListener.class);

	public void contextInitialized(ServletContextEvent sce) {
		//PropertyConfigurator.configure("log4j.properties");
		//通过ServletContextEvent获得ServletContext对象
		ServletContext context = sce.getServletContext();
		String name = context.getInitParameter("userName");
		log.debug("ServletContextListener:初始化参数name的值："+name);
		log.debug("ServletContextListener:Tomcat正在启动中......");
	}
	
	public void contextDestroyed(ServletContextEvent sce) {
		log.debug("ServletContextListener:Tomcat正在关闭中......");
	}

	@Override
	public void attributeAdded(ServletContextAttributeEvent arg0) {
		// TODO Auto-generated method stub
		System.out.println("attributeAdded");
		log.debug("ServletContextAttributeListener:attributeAdded......");
		
	}

	@Override
	public void attributeRemoved(ServletContextAttributeEvent arg0) {
		// TODO Auto-generated method stub
		System.out.println("attributeRemoved");
		log.debug("ServletContextAttributeListener:attributeRemoved......");
		
	}

	@Override
	public void attributeReplaced(ServletContextAttributeEvent arg0) {
		// TODO Auto-generated method stub
		System.out.println("attributeReplaced");
		log.debug("ServletContextAttributeListener:attributeReplaced......");
		
	}

}
