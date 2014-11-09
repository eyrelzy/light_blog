package com.cc.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.cc.po.User;
import com.cc.service.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class Register extends ActionSupport{
	private String username;
	private String password;
	private String repassword;
	
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
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
	
	
	
	public String execute() throws Exception {
		//封装一个user对象
		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		
		//获得request
		HttpServletRequest request = ServletActionContext.getRequest();
		if(userService.registerUser(user)) {
			request.setAttribute("url", "user/welcome.jsp");
			
			Map s = ActionContext.getContext().getSession();
			s.clear();
//			session.setAttribute("username", username);	
			s.put("username", username);
			request.setAttribute("info", "注册成功");
			return SUCCESS;
		}else {
			request.setAttribute("url", "register.jsp");
			request.setAttribute("info", "注册失败");
			return ERROR;
		}
	}

}
