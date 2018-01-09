###Servlet_配置

##### JavaWeb项目中web.xml有关servlet的基本配置J

tomcat下的conf中也有一个web.xml文件,所有的JavaWeb项目中web.xml都继承自服务器下的web.xml.

```
//web.xml  部分内容
<servlet>
        <servlet-name>default</servlet-name>
        <servlet-class>org.apache.catalina.servlets.DefaultServlet</servlet-class>
        <init-param>
            <param-name>debug</param-name>
            <param-value>0</param-value>
        </init-param>
        <init-param>
            <param-name>listings</param-name>
            <param-value>false</param-value>
        </init-param>
        <load-on-startup>1</load-on-startup>
 </servlet>
 
 <!-- The mapping for the default servlet -->
 <servlet-mapping>
 	<servlet-name>default</servlet-name>
 	<url-pattern>/</url-pattern>
 </servlet-mapping>
 
 <servlet>
        <servlet-name>jsp</servlet-name>
        <servlet-class>org.apache.jasper.servlet.JspServlet</servlet-class>
        <init-param>
            <param-name>fork</param-name>
            <param-value>false</param-value>
        </init-param>
        <init-param>
            <param-name>xpoweredBy</param-name>
            <param-value>false</param-value>
        </init-param>
        <load-on-startup>3</load-on-startup>
 </servlet>
 
 <!-- The mappings for the JSP servlet -->
 <servlet-mapping>
 	<servlet-name>jsp</servlet-name>
 	<url-pattern>*.jsp</url-pattern>
 	<url-pattern>*.jspx</url-pattern>
 </servlet-mapping>
    
```

在我们创建了一个servlet之后我们需要配置以下基本内容:

```
<servlet>  
    <servlet-name>Servlet的名称（自己起的，不要重复）</servlet-name>  
    <servlet-class>Servlet的类路径（xx.xx.xx.xxservlet）</servlet-class>  
</servlet>  
<servlet-mapping>  
    <servlet-name>Servlet的名称（与上面的一样）</servlet-name>  
    <url-pattern>/url名字（自己起的，不要重复，注意/，不能丢）</url-pattern>  
</servlet-mapping> 
```

Servlet3.0后可以也通过注解的方式进行配置。
