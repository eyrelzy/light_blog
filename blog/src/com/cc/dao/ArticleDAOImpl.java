package com.cc.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.cc.fenye.Page;
import com.cc.po.*;

public class ArticleDAOImpl extends HibernateDaoSupport implements ArticleDAO {

	//实现add方法
	public void add(Article article) {
		this.getHibernateTemplate().saveOrUpdate(article);
	}
	 public void del(int id) {
	    List<Article> al=(this.getHibernateTemplate().find("select art from Article art where art.id = ?", id));
	    Article a=(Article)al.get(0);
	   
	    List<Dianjiliang> dl=(this.getHibernateTemplate().find("select d from Dianjiliang d where d.AId = ?", id));
	    
	    if (dl!=null&&dl.size()>0){
	    this.getHibernateTemplate().deleteAll(dl);
	    }
         List<Critique> cl=(this.getHibernateTemplate().find("select c from Critique c where c.AId = ?", id));
	    
	    if (cl!=null&&cl.size()>0){
	    this.getHibernateTemplate().deleteAll(cl);
	    }
		this.getHibernateTemplate().delete(a);
	}

	public List<Article> queryUserAll(String username) {
	
		List find = this.getHibernateTemplate().find("select art from Article art where art.username = ? order by art.date desc", username);
		List<Article> list = find;
		return list;
	}

	public int queryUserAllCount(String username) {
		List find = this.getHibernateTemplate().find("select count(*) from Article art where art.username = ?",username);
		return ((Long)find.get(0)).intValue();
	}

	public List<Article> queryByPage(final String username, final Page page) {
		return this.getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Query query = session.createQuery("select art from Article art where art.username = ?order by art.date desc");
				//设置参数
				query.setParameter(0, username);
				//设置每页显示多少个，设置多大结果。
				query.setMaxResults(page.getEveryPage());
				//设置起点
				query.setFirstResult(page.getBeginIndex());
				return query.list();
			}
			
		});
	}

	public List<Article> queryAllByPage(final Page page) {
		return this.getHibernateTemplate().executeFind(new HibernateCallback() {
			public Object doInHibernate(Session session)
					throws HibernateException, SQLException {
				Query query = session.createQuery("select art from Article art order by art.date desc");
				//设置每页显示多少个，设置多大结果。
				query.setMaxResults(page.getEveryPage());
				//设置起点
				query.setFirstResult(page.getBeginIndex());
				return query.list();
			}
			
		});
	}

	public int queryAllCount() {
		List find = this.getHibernateTemplate().find("select count(*) from Article art");
		return ((Long)find.get(0)).intValue();
	}

	public Article queryById(int id) {
		List find = this.getHibernateTemplate().find("select art from Article art where art.id = ?order by art.date desc", id);
		return (Article) find.get(0);
	}

}
