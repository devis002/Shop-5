package com.service;

import java.util.List;

import com.model.Reviews;

public interface ReviewService {
	
	public void add(Reviews reviews);
	public List getReviewById(int id);

}
