package com.boot.security.server.design.decorate;
/**
* @author HF
* @version 创建时间：2019年11月6日 下午3:26:58
* 类说明
*/
public class Message extends PhoneMeal {

	private PhoneMeal basic;
	public Message(PhoneMeal basic) {
		super();
		this.basic = basic;
	}
	
	public String use() {
		return basic.use()+" +短信条数";
	}
}
