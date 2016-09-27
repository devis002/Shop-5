package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.HubDao;
import com.model.Hub;
@Service
public class HubServiceImpl implements HubService{
	@Autowired
	HubDao hubDao;
	
	@Transactional
	public void add(Hub hub) {
	hubDao.add(hub);
		
	}

	@Transactional
	public void edit(Hub hub) {
	hubDao.edit(hub);
		
	}

	@Transactional
	public List getallorders(int id) {
	
		return hubDao.getallorders(id);
	}

}
