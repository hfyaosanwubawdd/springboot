package com.boot.security.server.design.adapter;
/**
* @author HF
* @version 创建时间：2019年11月6日 下午3:41:49
* 类说明  适配器类
* 想要使用一个已经存在的类，但是它却不符合现有的接口规范，导致无法直接去访问，这时创建一个适配器就能间接去访问这个类中的方法。
* 我们有一个类，想将其设计为可重用的类（可被多处访问），我们可以创建适配器来将这个类来适配其他没有提供合适接口的类。
* 
* 想要使用接口中的某个或某些方法，但是接口中有太多方法，我们要使用时必须实现接口并实现其中的所有方法，可以使用抽象类来实现接口，
* 并不对方法进行实现（仅置空），然后我们再继承这个抽象类来通过重写想用的方法的方式来实现。这个抽象类就是适配器。
*/
public class VoltageAdapter {

	   // 改变电压的功能
	   public void changeVoltage() {
	       System.out.println("正在充电...");
	       System.out.println("原始电压：" + Phone.V + "V");
	       System.out.println("经过变压器转换之后的电压:" + (Phone.V - 200) + "V");
	   }
}
