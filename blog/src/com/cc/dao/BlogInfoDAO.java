package com.cc.dao;

import com.cc.po.BlogInfo;

public interface BlogInfoDAO {
	//���ø��Ի�����
	public void save(BlogInfo info);
	//���
	public BlogInfo get(String username);
}
