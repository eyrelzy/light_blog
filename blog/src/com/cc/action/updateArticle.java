package com.cc.action;

import java.util.Date;
import java.util.Map;

import com.cc.po.Article;
import com.cc.service.ArticleService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class updateArticle extends ActionSupport {
	private int id;
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	private String title;
	private String content;
	private ArticleService articleService;
	
	public ArticleService getArticleService() {
		return articleService;
	}
	public void setArticleService(ArticleService articleService) {
		this.articleService = articleService;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String execute() throws Exception {
		Map session = ActionContext.getContext().getSession();
		String username = (String) session.get("username");
		
		//封装一个PO类的对象
		Article a=articleService.showArticle(id);
		int read=a.getHasread();
		Article article = new Article();
		article.setId(id);
		article.setTitle(title);
		article.setContent(content);
		article.setUsername(username);
		article.setDate(new Date());
		article.setHasread(read);
		articleService.addArticle(article);
		return this.SUCCESS;
	}
}
