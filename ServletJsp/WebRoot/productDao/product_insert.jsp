<%@ page  import="java.util.*,jspjavabean.daoexample.pojo.Product" pageEncoding="UTF-8"%>
<%@ page import="jspjavabean.daoexample.factory.DAOFactory" %>
<%
request.setCharacterEncoding("utf-8");//解决中文乱码
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>执行添加产品</title>
  </head>
  <body>
      <%
      String pageId=request.getParameter("product_id");
      System.out.print("pageId="+pageId)
      String id=DAOFactory.getIEmpDAOInstance().findMaxProductId();
      System.out.print("id="+id)
        Product product = new Product();	//实例化Product对象
		product.setProduct_id(id);
		product.setProduct_name(request.getParameter("product_name"));
		product.setPrice(Double.parseDouble(request.getParameter("price")));
		product.setInfo(request.getParameter("info"));
		boolean flag = DAOFactory.getIEmpDAOInstance().
						addProduct(product);	//执行添加操作
		if(flag){
       %>
          <h4>添加产品信息成功</h4>
        <%
        }else{
         %>
           <h4>添加产品信息失败</h4>
         <%} %>
  </body>
</html>
