package servletannotation;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JsonServlet
 */
@WebServlet(name = "JsonServlet", urlPatterns = { "/json" })
public class JsonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        System.out.println("===收到了吗？");

        /**
         * 接收json
         */
       String result= readInputStream(request.getInputStream());
//        BufferedReader br = new BufferedReader(new InputStreamReader(
//                (ServletInputStream) request.getInputStream(), "utf-8"));
//        StringBuffer sb = new StringBuffer("");
//        String temp;
//        while ((temp = br.readLine()) != null) {
//            sb.append(temp);
//        }
//        br.close();
        System.out.println(result);
        /**
         * 返回json
         */
        OutputStream out = response.getOutputStream();  
        out.write(result.getBytes("UTF-8"));  
        out.flush();  
	}
	
	/** 
     * 把输入流的内容转化成字符串 
     * @param is 
     * @return 
     */  
    private  String readInputStream(InputStream is){  
        try {  
            ByteArrayOutputStream baos=new ByteArrayOutputStream();  
            int length=0;  
            byte[] buffer=new byte[1024];  
            while((length=is.read(buffer))!=-1){  
                baos.write(buffer, 0, length);  
            }  
            is.close();  
            baos.close();
            return baos.toString();  
        } catch (Exception e) {  
            e.printStackTrace();  
            return "获取失败";  
        }  
    }  

}
