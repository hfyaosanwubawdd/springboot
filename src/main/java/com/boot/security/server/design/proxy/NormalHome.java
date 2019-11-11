package com.boot.security.server.design.proxy;
/**
* @author HF
* @version 创建时间：2019年11月6日 下午4:23:56
* 类说明
*/
public class NormalHome  implements ProxyInterface{

	@Override
	public void marry() {
		 System.out.println("我们结婚啦～");		
	}

}
