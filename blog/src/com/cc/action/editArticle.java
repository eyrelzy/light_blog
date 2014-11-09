package com.cc.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.cc.fenye.Page;
import com.cc.fenye.Result;
import com.cc.po.Article;
import com.cc.po.BlogInfo;
import com.cc.service.ArticleService;
import com.cc.service.BlogInfoService;
import com.cc.service.CritiqueService;
import com.cc.service.DianjiliangService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class editArticle extends ActionSupport {
	// 业务逻辑组件属性
	private ArticleService articleService;
	// id属性
	private int id;
	//username
	private String username;
	
	private BlogInfoService blogInfoService;

	public BlogInfoService getBlogInfoService() {
		return blogInfoService;
	}

	public void setBlogInfoService(BlogInfoService blogInfoService) {
		this.blogInfoService = blogInfoService;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public ArticleService getArticleService() {
		return articleService;
	}

	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}

	public String execute() throws Exception {
		// 将文章设置到request范围
		HttpServletRequest request = ServletActionContext.getRequest();
		// 按ID查询文章
		Article article = articleService.showArticle(id);
		request.setAttribute("article", article);
		
		//取得个性化设置
		//通过业务逻辑组件来查询
		if(username != null || !"".equals(username)) {
			Map session = ActionContext.getContext().getSession();
			BlogInfo bloginfo  = blogInfoService.getBlogInfo(username);
			if(bloginfo != null) {
				session.put("blogtitle", bloginfo.getBlogtitle());
				session.put("idiograph", bloginfo.getIdiograph());
			}
		}
		return this.SUCCESS;
	}

}
