package com.cc.dao;

import com.cc.po.BlogInfo;

public interface BlogInfoDAO {
	//设置个性化内容
	public void save(BlogInfo info);
	//获得
	public BlogInfo get(String username);
}
