package jspjavabean.daoexample.factory;

import jspjavabean.daoexample.dao.ProductDao;
import jspjavabean.daoexample.service.ProductService;

public class DAOFactory {
	public static ProductDao getIEmpDAOInstance()throws Exception {   
        return new ProductService();//取得业务操作类   
    } 
}
