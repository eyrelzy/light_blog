package com.cc.action;

import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.cc.po.User;
import com.cc.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Logout extends ActionSupport {
	private String username;
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	public String execute() throws Exception {
		
    	//获得request
		HttpServletRequest request = ServletActionContext.getRequest();
		Cookie[] cookies=request.getCookies();           
		 if(null!=cookies && cookies.length!=0)
		 {           
		    
		      for(int i=0;i<cookies.length;i++)
		      {
		         Cookie cookie=cookies[i];
		         String sName=cookie.getName();
		         
		         if(sName.equals("user"))
		         {
		           cookies[i].setMaxAge(0);   
		         }
		         
		     }
		 }

	    Map session = ActionContext.getContext().getSession();
	    session.put("username","");
	    request.setAttribute("url", "../logresult.jsp");
		request.setAttribute("info", "登出成功");
		return SUCCESS;
	}

}
