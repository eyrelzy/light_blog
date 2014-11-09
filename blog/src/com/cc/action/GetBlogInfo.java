package com.cc.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.cc.po.BlogInfo;
import com.cc.service.BlogInfoService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class GetBlogInfo extends ActionSupport {

	private BlogInfoService blogInfoService;

	public BlogInfoService getBlogInfoService() {
		return blogInfoService;
	}

	public void setBlogInfoService(BlogInfoService blogInfoService) {
		this.blogInfoService = blogInfoService;
	}
	
	public String execute() throws Exception {
		
		Map session = ActionContext.getContext().getSession();
		String username = (String) session.get("username");
		//通过业务逻辑组件来查询
		BlogInfo bloginfo  = blogInfoService.getBlogInfo(username);
		
		if(bloginfo != null) {
			session.put("blogtitle", bloginfo.getBlogtitle());
			session.put("idiograph", bloginfo.getIdiograph());
		}
		return this.SUCCESS;
	}
}
