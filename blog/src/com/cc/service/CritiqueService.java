package com.cc.service;

import com.cc.fenye.Page;
import com.cc.fenye.Result;
import com.cc.po.Critique;

public interface CritiqueService {
	//�������
	public void addCritique(Critique critique);
	
	//��ҳ��ʾ����
	public Result showCritiqueByPage(int AId,Page page);
	
	//���ָ�����µ�������
	public int getCritiqueCount(int AId);
}
