package com.boot.security.server.design.adapter;
/**
* @author HF
* @version 创建时间：2019年11月6日 下午3:41:18
* 类说明
*    	  手机充电器  把220v电压转为20v电压后  给手机充电
*/
public class Phone {

	   public static final int V = 220;// 正常电压220v，是一个常量

	   private VoltageAdapter adapter;

	   // 充电
	   public void charge() {
	       adapter.changeVoltage();
	   }

	   public void setAdapter(VoltageAdapter adapter) {
	       this.adapter = adapter;
	   }
	   
	   
	   
	   public static void main(String[] args) {
	       Phone phone = new Phone();
	       VoltageAdapter adapter = new VoltageAdapter();
	       phone.setAdapter(adapter);
	       phone.charge();
	   }
}
