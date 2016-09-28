package com.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Reviews;

@Repository
public class ReviewDaoImpl implements ReviewDao{
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public void add(Reviews reviews) {
		sessionFactory.getCurrentSession().save(reviews);
		
	}

}
