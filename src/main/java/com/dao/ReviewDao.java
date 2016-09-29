package com.dao;

import java.util.List;

import com.model.Reviews;

public interface ReviewDao {

	public void add(Reviews reviews);
	public List getReviewbyId(int id);
}
