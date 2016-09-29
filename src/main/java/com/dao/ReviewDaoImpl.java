package com.dao;

import java.util.List;

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

	@Override
	public List getReviewbyId(int id) {
		
		return sessionFactory.getCurrentSession().createQuery("from Reviews where productId ='"+id+"'").list();
				
	}

}
