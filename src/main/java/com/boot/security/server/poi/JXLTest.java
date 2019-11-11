package com.boot.security.server.poi;

import java.io.File;
import java.io.IOException;

import jxl.Workbook;
import jxl.write.Formula;
import jxl.write.WritableSheet;
import jxl.write.WritableWorkbook;

/**
* @author HF
* @version 创建时间：2019年11月5日 下午3:28:14
* 类说明
*/
public class JXLTest {

	public static void main(String[] args) throws Exception {
		 WritableWorkbook workbook = Workbook.createWorkbook(new File("D:/test/1.xls"));
	        WritableSheet sheet = workbook.createSheet("测试表", 0);
	        String formu = "HYPERLINK(\"11\",\"查看图片\")";
	        Formula formula = new Formula(1, 1, formu);
	        sheet.addCell(formula);
	        //为第一行添加表头，我直接添加字段名，具体使用根据实际情况
	        workbook.write();
	        workbook.close();
	}
}
