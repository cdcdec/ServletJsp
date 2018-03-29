package test;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

public class TestJson {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("======================1==============");
		executeJson("http://192.168.0.102:8080/ServletJsp/json");
		System.out.println("======================2==============");
	}
	
	
	private static final String JSON="{" + 
			"\"employees\":" + 
			"{ \"firstName\":\"Bill\" , \"lastName\":\"Gates\" }," + 
			"{ \"firstName\":\"George\" , \"lastName\":\"Bush\" }," + 
			"{ \"firstName\":\"Thomas\" , \"lastName\":\"Carter\" }]}";
	
	private static void executeJson(String urlStr) {
		HttpURLConnection httpURLConnection = null;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        URL url=null;
        try {
            url = new URL(urlStr);
            httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setDoOutput(true);
            //上传json数据时需要的请求头
            httpURLConnection.setRequestProperty("ContentType", "application/json");
            httpURLConnection.connect();
            outputStream = httpURLConnection.getOutputStream();
            outputStream.write(JSON.getBytes());
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode == 200) {
                String urlS = httpURLConnection.getURL().toString();
                inputStream = httpURLConnection.getInputStream();
                readServiceData(inputStream);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
                if (inputStream != null) {
                    try {
                        inputStream.close();
                        outputStream.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        
	}
	/**
     * 读取服务器输出流
     *
     * @param inputStream
     * @throws IOException
     */
    private static void readServiceData(InputStream inputStream) throws IOException {
        byte[] buffer = new byte[1024];
        int len;
        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        while ((len = inputStream.read(buffer)) != -1) {
            outputStream.write(buffer, 0, len);
        }
        outputStream.close();
        final String data = new String(outputStream.toByteArray());
        System.out.println(data);
    }


}
