package com.boot.security.server.poi;

import java.io.File;
import java.io.IOException;

/**
* @author HF
* @version 创建时间：2019年11月5日 下午2:21:58
* 类说明
*/
public class RenameDir {

	public static void main(String[] args) {
		try {
			boolean renameFile = renameFile("D:\\test", "1", "11");
			System.out.println(renameFile);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
    public static boolean renameFile(String filepath,String rStr,String newStr) throws IOException{ 
        try { 
          File fileDir = new File(filepath);
          	for (File file : fileDir.listFiles())
          	{
          		System.out.println(file.getPath()+"  "+file.isDirectory());
                  if(file.isDirectory()){
                	  System.out.println("123123");
                      String fileName = file.getName();  
                      String newName = fileName.replace(rStr,newStr);  
                      File f_new = new File(filepath, newName);
                      file.renameTo(f_new);
                      System.out.println(filepath+"\\"+fileName+">>"+filepath+"\\"+newName+"-----"+f_new.exists());
                  }
      		}
      	}catch(Exception e){ 
      	    System.out.println("错误信息: " + e.getMessage()+"   请确认文件夹是否处在！");
      	}
      return true; 
    }
}
