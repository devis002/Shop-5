package com.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Hub;

@Repository
public class HubDaoImpl implements HubDao{
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public void add(Hub hub) {
		sessionFactory.getCurrentSession().save(hub);
	}

	@Override
	public void edit(Hub hub) {
		sessionFactory.getCurrentSession().update(hub);
		
	}

	@Override
	public List getallorders(int id) {
		
		return sessionFactory.getCurrentSession().createQuery("from Hub where orderId='"+id+"'").list();
	}

}
