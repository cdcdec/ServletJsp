###WebServlet注解

| 属性名            | 类型             | 属性描述                                     |
| -------------- | -------------- | ---------------------------------------- |
| name           | String         | 指定servlet的name属性,等价于<Servlet-name>.如果没有显示指定，则该servlet的取值即为类的全限定名 |
| value          | String[]       | 等价于urlPatterns,二者不能共存.                   |
| urlPatterns    | String[]       | 指定一组servlet的url的匹配模式,等价于url-pattern标签.可以配置多个映射，如:urlPatterns={"/user/test", "/user/example"}. |
| loadOnStartup  | int            | 指定servlet的加载顺序,等价于load-on-startup标签.标记容器是否在启动应用时就加载Servlet，默认不配置或数值为负数时表示客户端第一次请求Servlet时再加载；0或正数表示启动应用就加载，正数情况下，数值越小，加载该Servlet的优先级越高 |
| initParams     | WebInitParam[] | 指定一组初始化参数,等价于init-param标签.               |
| asyncSupported | boolean        | 申明servlet是否支持异步操作模式,等价于async-supported标签 |
| displayName    | String         | servlet的显示名,等价于display-name标签            |
| description    | String         | servlet的描述信息,等价于description标签            |

##### WebInitParam  主要属性列表

| 属性名         | 描述                      |
| ----------- | ----------------------- |
| name        | 指定参数的名称,等价于<param-name> |
| value       | 指定参数的值,等价于<param-value> |
| description | 参数的描述,等价于<description>  |

