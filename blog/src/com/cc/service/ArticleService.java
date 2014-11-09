package com.cc.service;

import java.util.List;

import com.cc.fenye.Page;
import com.cc.fenye.Result;
import com.cc.po.Article;

public interface ArticleService {
	//进行文章的保存
	public void addArticle(Article article);
	public void delArticle(int id);
	
	//取出用户所有的文章
	public List<Article> showUserAllArticle(String username);
	
	//分页显示用户文章
	public Result showUserArticleByPage(String username,Page page);
	
	//分页显示全部文章
	public Result showArticleByPage(Page page);
	
	//显示文章
	public Article showArticle(int id);
	
	//获得评论数
	public int getCritiqueCount(int AId);
}
