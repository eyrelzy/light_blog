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

public class Login extends ActionSupport {
	private String username;
	private String password;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String execute() throws Exception {
		
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		//获得request
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session =request.getSession();
	
        if (session.getAttribute("username")=="username")
        
        {
        	
 			return "already";
        }
        
     
		
       
        
        Cookie[] cookies=request.getCookies();           
		 if(null!=cookies && cookies.length!=0)
		 {           
		    
		      for(int i=0;i<cookies.length;i++)
		      {
		         Cookie cookie=cookies[i];
		         String sName=cookie.getName();
		         
		         if(sName.equals("user"))
		         {
		        	
		        	 return "already" ;
		         }
		         
		     }
		 }
        
		if(userService.loginUser(user)) {
			Map s = ActionContext.getContext().getSession();
			s.put("username", username);
			request.setAttribute("url", "user/welcome.jsp");
			request.setAttribute("info", "登陆成功");
	        session.setAttribute("username", username);
	       return SUCCESS;
		} else {
			request.setAttribute("url", "login.jsp");
			request.setAttribute("info", "登陆失败");
			return ERROR;
		}
	}

}
