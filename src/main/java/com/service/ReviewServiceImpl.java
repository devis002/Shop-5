package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ReviewDao;
import com.model.Reviews;
@Service
public class ReviewServiceImpl implements ReviewService{
	@Autowired
	ReviewDao reviewDao;
	@Transactional
	public void add(Reviews reviews) {
		
		reviewDao.add(reviews);
	}

}
