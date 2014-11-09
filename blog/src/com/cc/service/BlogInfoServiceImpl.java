package com.cc.service;

import com.cc.dao.BlogInfoDAO;
import com.cc.po.BlogInfo;

public class BlogInfoServiceImpl implements BlogInfoService {
	private BlogInfoDAO blogInfoDAO;
	
	public BlogInfo getBlogInfo(String username) {
		return blogInfoDAO.get(username);
	}

	public BlogInfoDAO getBlogInfoDAO() {
		return blogInfoDAO;
	}

	public void setBlogInfoDAO(BlogInfoDAO blogInfoDAO) {
		this.blogInfoDAO = blogInfoDAO;
	}

	public void setBlogInfo(BlogInfo blogInfo) {
		
		blogInfoDAO.save(blogInfo);
	}

}
