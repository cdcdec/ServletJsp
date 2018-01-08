<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<title>Servlet & Jsp</title>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>
	<fieldset>
			<legend>Servlet</legend>
			<a href="welcome"><button>WelcomeServlet</button></a>
			<a href="generic"><button>GenericServletDemoServlet</button></a>
			<a href="MyServlet"><button>my</button></a>
			<a href="servletConfigDemo"><button>ServletConfigDemoServlet</button></a>
			<a href="form"><button>FormServlet</button></a>
			<a href="simple"><button>SimpleServlet</button></a>
			<a href="welcome2"><button>WelcomeServlet2</button></a>
			<a href="cookieClass"><button>CookieClassServlet</button></a>
			<a href="form"><button>FormServlet</button></a>
			<a href="cookieInfo"><button>CookieInfoServlet</button></a>
			<a href="preference"><button>preference</button></a>
			<a href="customer"><button>CookieInfoServlet</button></a>
			<a href="updateCustomer"><button>CustomerServlet_updateCustomer</button></a>
			<a href="products"><button>ShoppingCartServlet_products</button></a>
			<a href="viewProductDetails"><button>ShoppingCartServlet_viewProductDetails</button></a>
			<a href="addToCart"><button>ShoppingCartServlet_addToCart</button></a>
			<a href="viewCart"><button>ShoppingCartServlet_viewCart</button></a>
		</fieldset>
		
		<fieldset>
			<legend>Servlet Listener</legend>
			<a href="listener/sessionlistenerLogin.jsp"><button>登录session监听</button></a>
			<a href="listener/requestListener.jsp"><button>request监听</button></a>
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
</html>
