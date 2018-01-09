###jsp_JavaBean

Bean是一种软体组件,在JSP开发中经常用来封装事务逻辑、数据库操作等。对JSP技术而言,Java Bean是最基础的分层技术。

* Java　Bean类必须是public类
* 提供给JSP页面调用的方法，必须属于public访问权限
* JavaBean类中的属性，提供给JSP页面调用时必须提供public的get和set方法
* 必须拥有不带参数的构造方法。
* 支持反射机制
* 支持事件(一种简单的通信机制)
* 支持属性:可以自定义属性,利用标准标签与JSP页面交互数据.
* 支持持久性