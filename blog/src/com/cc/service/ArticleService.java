package com.cc.service;

import java.util.List;

import com.cc.fenye.Page;
import com.cc.fenye.Result;
import com.cc.po.Article;

public interface ArticleService {
	//�������µı���
	public void addArticle(Article article);
	public void delArticle(int id);
	
	//ȡ���û����е�����
	public List<Article> showUserAllArticle(String username);
	
	//��ҳ��ʾ�û�����
	public Result showUserArticleByPage(String username,Page page);
	
	//��ҳ��ʾȫ������
	public Result showArticleByPage(Page page);
	
	//��ʾ����
	public Article showArticle(int id);
	
	//���������
	public int getCritiqueCount(int AId);
}
