package com.boot.security.server.poi;

import java.io.File;

/**
* @author HF
* @version 创建时间：2019年11月5日 上午11:43:39
* 类说明
*/
public class ReadFile {

	public static void main(String[] args) {
		readfile("F:/多个文件");
	}
	public static String[] readfile(String basePath) {
		String[] list=new File(basePath).list();
		return list;
	}
}
