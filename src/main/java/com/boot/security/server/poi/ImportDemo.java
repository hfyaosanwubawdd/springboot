package com.boot.security.server.poi;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

import io.netty.util.internal.StringUtil;
/**
* @author HF
* @version 创建时间：2019年5月27日 上午10:19:46
* 类说明  poi导入excel.xls
*/
public class ImportDemo {
	public static void main(String[] args) throws IOException, SQLException {
		push();
	}

	public static Map<String,String> push() throws IOException, SQLException {
		List<Map<String,String>> list = new ArrayList<Map<String,String>>();
		Map<String,String> map = new TreeMap<String,String>();
		File file = new File("E:\\我的资源 目录.xls");
		if (file != null) {
			FileInputStream fileInputStream = new FileInputStream(file);
			Workbook workbook = new HSSFWorkbook(fileInputStream);
			Sheet sheet = workbook.getSheetAt(1);
			if (sheet.getPhysicalNumberOfRows() > 2) {
				String v = "";
				String key = "";
				Integer index = 0;
				for (int k = 1; k < sheet.getPhysicalNumberOfRows(); k++) {
					Row row = sheet.getRow(k);
					Cell cell0 = row.getCell(1);
					Cell cell2 = row.getCell(2);
					if (!StringUtil.isNullOrEmpty(cell0.toString())) {
						v = cell0.toString();
					}
					key = cell2.toString();
					if (!StringUtil.isNullOrEmpty(cell2.toString())) {
						key = ""+index++;
					}
					map.put(key, v);
				}
				System.out.println(map.size());
			}
			workbook.close();
			fileInputStream.close();
		}
		return map;
	}
}
