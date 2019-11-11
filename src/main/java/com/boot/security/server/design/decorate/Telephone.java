package com.boot.security.server.design.decorate;
/**
* @author HF
* @version 创建时间：2019年11月6日 下午3:20:38
* 类说明
*/
public class Telephone extends PhoneMeal {

	private PhoneMeal basic;
	public Telephone(PhoneMeal basic) {
		super();
		this.basic = basic;
	}
	
	public String use() {
		return basic.use()+" +打电话分钟数";
	}
}
