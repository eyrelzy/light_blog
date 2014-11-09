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

public class ShowArticle extends ActionSupport {
	// 业务逻辑组件属性
	private ArticleService articleService;
	// id属性
	private int id;
	// 点击量的业务逻辑组件
	private DianjiliangService dianjiliangService;
	// 评论的业务逻辑组件
	private CritiqueService critiqueService;
	//设置当前页
	private int currentPage;
	
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

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public CritiqueService getCritiqueService() {
		return critiqueService;
	}

	public void setCritiqueService(CritiqueService critiqueService) {
		this.critiqueService = critiqueService;
	}

	public DianjiliangService getDianjiliangService() {
		return dianjiliangService;
	}

	public void setDianjiliangService(DianjiliangService dianjiliangService) {
		this.dianjiliangService = dianjiliangService;
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
	
		HttpServletRequest request = ServletActionContext.getRequest();
		if(username != null || !"".equals(username)) {
			Map session = ActionContext.getContext().getSession();
			BlogInfo bloginfo  = blogInfoService.getBlogInfo(username);
			if(bloginfo != null) {
				session.put("blogtitle", bloginfo.getBlogtitle());
				session.put("idiograph", bloginfo.getIdiograph());
			}
		}
		Article article = articleService.showArticle(id);
		
		String IP = request.getRemoteAddr();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String stime = sdf.format(new Date());
		Date time = sdf.parse(stime);

		if (!dianjiliangService.isVistor(id, IP, time)) {
		
			article.setHasread(article.getHasread() + 1);
		}

		articleService.addArticle(article);
		
		
		Page page = new Page();
		page.setCurrentPage(this.getCurrentPage());
		page.setEveryPage(5);
		
		Result result = critiqueService.showCritiqueByPage(id, page);
		
		request.setAttribute("page", result.getPage());
		request.setAttribute("allCri", result.getList());
		request.setAttribute("article", article);
		
		
		return this.SUCCESS;
	}

}
