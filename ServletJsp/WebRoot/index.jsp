<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>Servlet & Jsp</title>

<!-- <link rel="stylesheet"  type="text/css"  href="resource/index.css" > -->
<style>
fieldset {
	padding: 10px;
	margin: 10px;
	color: #ff0000;
	font-size: 20px;
	border: #06c dashed 1px;
}

.button {
	width: 300px;
	height: 45px;
	border: 2px solid;
	border-radius: 18px;
	font-size: 20px;
	margin-bottom: 10px;
}
</style>


</head>

<body>
	<fieldset>
		<legend>Servlet</legend>
		<a href="welcome"><button>WelcomeServlet</button></a> <a
			href="generic"><button>GenericServletDemo</button></a> <a
			href="MyServlet"><button>my</button></a> <a href="servletConfigDemo"><button>ServletConfigDemo</button></a>
		<a href="form"><button>FormServlet</button></a> <a href="simple"><button>SimpleServlet</button></a>
		<a href="welcome2"><button>WelcomeServlet2</button></a> <a
			href="cookieClass"><button>CookieClassServlet</button></a> <a
			href="form"><button>FormServlet</button></a> <a href="cookieInfo"><button>CookieInfoServlet</button></a>
		<a href="preference"><button>preference</button></a> <a
			href="customer"><button>CookieInfoServlet</button></a> <a
			href="updateCustomer"><button>updateCustomer</button></a> <a
			href="products"><button>ShoppingCart_products</button></a> <a
			href="viewProductDetails"><button>ShoppingCart_ProductDetails</button></a>
		<a href="addToCart"><button>ShoppingCart_addToCart</button></a> <a
			href="viewCart"><button>ShoppingCart_viewCart</button></a>
	</fieldset>

	<fieldset>
		<legend>Servlet Listener</legend>
		<a href="listener/sessionlistenerLogin.jsp"><button>登录session监听</button></a>
		<a href="listener/requestListener.jsp"><button>request监听</button></a>
	</fieldset>

	<fieldset>
		<legend>Servlet Filter</legend>
		<a href="TestFilter"><button>TestFilter</button></a> 
		<a href="gzip.filter"><button>gzipFilter</button></a>
	</fieldset>

	<fieldset>
		<legend>Async Servlet</legend>
		<a href="asyncdemo.do"><button>AsyncServlet</button></a> 
		<a href="AsyncTestServlet"><button>AsyncTestServlet</button></a>
	</fieldset>

	<!-- el demo  jsp -->
	<fieldset>
		<legend>EL Jsp</legend>
		<a href="eldemo/eldemo.jsp"><button>Jsp</button></a> 
		<a	href="jstl/jstl_index.jsp"><button>jstl</button></a> 
		<a	href="grammar/shengming.jsp"><button>jsp声明</button></a> 
		<a	href="jdbc/jdbc.jsp"><button>jdbc</button></a>
	</fieldset>
	
	
	<fieldset>
		<legend>Java Bean</legend>
		<a href="javaBean/product1.jsp"><button>利用表达式设置Bean属性</button></a> 
		<a	href="javaBean/product2.jsp"><button>表单参数设置Bean属性值</button></a> 
		<a	href="javaBean/product3.jsp"><button>表单参数值设置Bean属性值2</button></a>
		<a	href="javaBean/product4.jsp"><button>利用表达式设置Bean属性2</button></a> 
		<a	href="javaBean/requestScope.jsp"><button>Bean作用域request</button></a>
		<a	href="javaBean/sessionScope.jsp"><button>Bean作用域session</button></a>
		<a	href="javaBean/applicationScope.jsp"><button>Bean作用域application</button></a>
		<a	href="javaBean/login.jsp"><button>登录验证</button></a>
		<a	href="javaBean/product_list.jsp"><button>产品列表(product_list.jsp)</button></a>
		<a	href="javaBean/product_add.jsp"><button>产品添加(product_add.jsp)</button></a>
	</fieldset>

</body>

<script type="text/javascript">
	var btns = document.getElementsByTagName("button");
	for (var i = 0; i < btns.length; i++) {
		btns[i].className = 'button';
	}
</script>
</html>
