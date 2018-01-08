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
    padding:10px;
    margin:10px;
    color:#ff0000; 
    font-size:20px;
    border:#06c dashed 1px;
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
	</fieldset>


	<!-- el demo  jsp -->
	<P>
		<a href="eldemo/eldemo.jsp">el_demo</a>
	</P>


	<!-- jstl -->
	<P>
		<a href="jstl/jstl_index.jsp">jstl</a>
	</P>

	<!-- jsp声明 -->
	<P>
		<a href="grammar/shengming.jsp">jsp声明</a>
	</P>

	<!-- jdbc -->
	<P>
		<a href="jdbc/jdbc.jsp">jdbc</a>
	</P>



</body>

<script type="text/javascript">
	var btns = document.getElementsByTagName("button");
	for (var i = 0; i < btns.length; i++) {

		btns[i].className = 'button';

	}
</script>
</html>
