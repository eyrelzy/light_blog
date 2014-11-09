package com.cc.action;
 
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
 
import org.apache.struts2.ServletActionContext;
 
import com.opensymphony.xwork2.Action;
 


public class DownLoad implements Action {
    // ��ʼ��ͨ��paramָ�����ļ�������
    private String fileName;
   
    public void setFileName(String fileName) {
       this.fileName = fileName;
    }
 
    public String getFileName() {
       return fileName;
    }
 
    public InputStream getInputStream() throws Exception {
     
 
       return ServletActionContext.getServletContext().getResourceAsStream(fileName);
    }
 
    public String execute() throws Exception {
   
       return SUCCESS;
    }
}