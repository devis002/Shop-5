package com.dao;

import java.util.List;

import com.model.Hub;

public interface HubDao {
	
	public void add(Hub hub);
	public void edit(Hub hub);
	public List getallorders(int id);

}
