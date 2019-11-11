package com.boot.security.server.poi;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.apache.poi.common.usermodel.HyperlinkType;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFHyperlink;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.boot.security.server.utils.ConvertCharSet;
public class Test {
	public static void main(String[] args) throws IOException, SQLException {
		XSSFWorkbook workbook = new XSSFWorkbook();
		XSSFSheet sheet = workbook.createSheet("Hyper Links");
		XSSFCell cell11;
		XSSFCell cell12;
		XSSFCell cell13;
		XSSFCell cell14;
		XSSFCell cell21;
		XSSFCell cell22;
		XSSFCell cell23;
		XSSFCell cell24;
		XSSFCell cell31;
		XSSFCell cell32;
		XSSFCell cell33;
		CreationHelper createHelper = workbook.getCreationHelper();
		XSSFCellStyle hlinkstyle = workbook.createCellStyle();
		XSSFFont hlinkfont = workbook.createFont();
		hlinkfont.setUnderline(XSSFFont.U_SINGLE);
		hlinkstyle.setFont(hlinkfont);
		//URL Link
		Integer row = 1;
		Integer row_ = 2;
		String[] readfile = ReadFile.readfile("F:\\课程资料");
		try {
			for (int i = 0; i < readfile.length; i++) {
					if (!readfile[i].contains(".")) {
						XSSFRow sheetRow = sheet.createRow(row);
						cell11 = sheetRow.createCell(1);
						cell11.setCellValue(readfile[i]);
						
						cell12 = sheetRow.createCell(2);
						cell12.setCellValue("=HYPERLINK(O"+row_+",\"打开\") ");
						
						cell14 = sheetRow.createCell(14);
						cell14.setCellValue("=HYPERLINK(\"./课程资料/"+readfile[i]+"\"&N"+row_+")");
						row++;
						row_++;
					}
					String[] readfile2 = ReadFile.readfile("F:\\课程资料"+"\\"+readfile[i]);
					if (readfile2 == null || readfile2.length < 1) {
						continue;
					}
				 for (int j = 0; j < readfile2.length; j++) {
						if (!readfile2[j].contains(".")) {
							XSSFRow sheetRow = sheet.createRow(row);
							cell21 = sheetRow.createCell(3);
							cell21.setCellValue(readfile2[j]);
							cell22 = sheetRow.createCell(4);
							cell22.setCellValue("=HYPERLINK(P"+row_+",\"打开\") ");
							cell23 = sheetRow.createCell(15);
							cell23.setCellValue("=HYPERLINK(\"./课程资料/"+readfile[i]+"/"+readfile2[j]+"\"&M"+row_+")");
							row++;
							row_++;
						}
						if ("10 尽职调查".equals(readfile[i]) || "30 建筑工程（升级版）".equals(readfile[i]) || "31房地产".equals(readfile[i])) {
							 String[] readfile3 = ReadFile.readfile("F:\\课程资料"+"\\"+readfile[i]+"\\"+readfile2[j]);
							 if (readfile3 == null || readfile3.length < 1) {
									continue;
								}
							 for (int k = 0; k < readfile3.length; k++) {
								 XSSFRow sheetRow = sheet.createRow(row);
									cell31 = sheetRow.createCell(5);
									cell31.setCellValue(readfile3[k]);
									cell32 = sheetRow.createCell(6);
									cell32.setCellValue("=HYPERLINK(Q"+row_+",\"打开\") ");
									cell33 = sheetRow.createCell(16);
									cell33.setCellValue("=HYPERLINK(\"./课程资料/"+readfile[i]+"/"+readfile2[j]+"/"+readfile3[k]+"\"&L"+row_+")");
									row++;
									row_++;
							}
						}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		FileOutputStream fos = new FileOutputStream(new File("F:/1.xlsx"));
		workbook.write(fos);
		fos.close();
		System.out.println("hyperlink.xlsx written successfully");
	}
}
