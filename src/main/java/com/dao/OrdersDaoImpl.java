package com.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrdersDaoImpl implements OrdersDao {
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List getAllOrders() {
		return sessionFactory.getCurrentSession().createQuery("from Orders").list();
	}
	
	

}
