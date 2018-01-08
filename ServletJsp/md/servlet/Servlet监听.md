###Servlet监听

##### 监听接口和事件类

| 类别                | 监听接口                                     | 监听事件                                     |
| ----------------- | ---------------------------------------- | ---------------------------------------- |
| 与ServletContext相关 | ServletContextListener和ServletContextAttributeListener | ServletContextEvent/ServletContextAttributeEvent |
| 与HttpSession相关 |HttpSessionListener,HttpSessionActivationListener,HttpSessionAttributeListener,HttpSessionBindingListener | HttpSessionEvent,HttpSessionAttributeEvent |
| 与ServletRequest相关 | ServletRequestListener/ServletRequestAttributeListener | ServletRequestEvent,ServletRequestAttributeEvent |


##### WebInitParam  主要属性列表

| 属性名         | 描述                      |
| ----------- | ----------------------- |
| name        | 指定参数的名称,等价于<param-name> |
| value       | 指定参数的值,等价于<param-value> |
| description | 参数的描述,等价于<description>  |

