package jspjavabean.daoexample.test;
import jspjavabean.daoexample.factory.DAOFactory;
import jspjavabean.daoexample.pojo.Product;
/**
 * 测试  向数据库里添加数据
 * 利用操作对象的方法在数据库里添加数据
 * @author cdc
 *
 */
public class TestInsertProduct {
	public static void main(String[] args){
		Product product = null;
		try{
			for(int i=0;i<5;i++){
				product = new Product();
				product.setProduct_id("350115001010"+i);
				product.setProduct_name("水杯"+i);
				product.setPrice(100+i);
				product.setInfo("这是一个精美的杯子"+i);
				DAOFactory.getIEmpDAOInstance().addProduct(product);
			}
		}catch(Exception e){
			e.printStackTrace();
			e.printStackTrace();
		}
	}
}