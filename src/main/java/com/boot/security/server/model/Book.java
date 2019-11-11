package com.boot.security.server.model;
/**
* @author HF
* @version 创建时间：2019年10月31日 下午2:28:57
* 类说明
*/

public class Book  extends BaseEntity<Long> {

	private String name;
	private String authoe;
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Book(String name, String authoe) {
		super();
		this.name = name;
		this.authoe = authoe;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthoe() {
		return authoe;
	}
	public void setAuthoe(String authoe) {
		this.authoe = authoe;
	}
	
}
