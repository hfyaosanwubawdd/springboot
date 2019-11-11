package com.boot.security.server.design.decorate;
/**
* @author HF
* @version 创建时间：2019年11月6日 下午3:28:46
* 类说明
*/
public class DataThroughput extends PhoneMeal{

	private PhoneMeal basic;
	public DataThroughput(PhoneMeal basic) {
		super();
		this.basic = basic;
	}
	
	public String use() {
		return basic.use()+" +数据流量包";
	}
}
