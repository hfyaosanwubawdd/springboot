package com.boot.security.server.utils;

import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;

public class HttpProxy {
	public static void main(String[] args) throws Exception {
		CloseableHttpClient httpClient = HttpClients.createDefault(); 
		HttpGet httpGet = new HttpGet("http://localhost:9000/ips/level"); 
		HttpHost httoHost = new HttpHost("115.151.3.217",808);
		RequestConfig requestConfig = RequestConfig.custom()
				.setConnectTimeout(10000)//设置连接超时时间,单位毫秒
				.setSocketTimeout(10000)//设置读取超时时间,单位毫秒
				.setProxy(httoHost)//设置代理
				.build();
		httpGet.setConfig(requestConfig);
		//设置Http报文头信息
		httpGet.setHeader("User-Agent", "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:50.0) Gecko/20100101 Firefox/50.0");
		     
		CloseableHttpResponse response = httpClient.execute(httpGet); // 执行http get请求
	
		 if (response != null){
	            HttpEntity entity = response.getEntity();  //获取返回实体
	            if (entity != null){
	            	System.out.println("网页内容为：");
	                System.out.println(EntityUtils.toString(entity,"gbk"));
	            }
	        }
	        if (response != null){
	            response.close();
	        }
	        if (httpClient != null){
	            httpClient.close();
	        }
	}
}
