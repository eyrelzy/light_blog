package com.cc.service;

import java.util.List;

import com.cc.dao.CritiqueDAO;
import com.cc.fenye.Page;
import com.cc.fenye.PageUtil;
import com.cc.fenye.Result;
import com.cc.po.Article;
import com.cc.po.Critique;

public class CritiqueServiceImpl implements CritiqueService {
	private CritiqueDAO critiqueDAO;

	public CritiqueDAO getCritiqueDAO() {
		return critiqueDAO;
	}

	public void setCritiqueDAO(CritiqueDAO critiqueDAO) {
		this.critiqueDAO = critiqueDAO;
	}

	public void addCritique(Critique critique) {
		critiqueDAO.addCritique(critique);
	}

	public Result showCritiqueByPage(int AId, Page page) {
		page = PageUtil.createPage(page,critiqueDAO.queryCritiqueCount(AId));
		List<Critique> all = critiqueDAO.queryByPage(AId, page);
		Result result = new Result();
		result.setPage(page);
		result.setList(all);
		return result;
	}

	public int getCritiqueCount(int AId) {
		return critiqueDAO.queryCritiqueCount(AId);
	}
}
