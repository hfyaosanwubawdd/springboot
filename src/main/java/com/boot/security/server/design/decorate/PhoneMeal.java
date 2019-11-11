package com.boot.security.server.design.decorate;
/**
* @author HF
* @version 创建时间：2019年11月6日 下午3:14:34
* 类说明
* 装饰者模式 -- 基本核心业务 + 各种装饰业务自由组合
* 	手机套餐
* 		基本月租+分钟数+流量包+短信条数...
*/
public class PhoneMeal {

	private String yuezu;

	public PhoneMeal() {
		super();
	}

	public PhoneMeal(String yuezu) {
		super();
		this.yuezu = yuezu;
	}
	
	public String use() {
		return yuezu;
	}
	
	public static void main(String[] args) {
		PhoneMeal p = new DataThroughput(new Message(new Telephone(new PhoneMeal(" 19元月租 腾讯大王卡"))));
		System.out.println(p.use());
	}
}
