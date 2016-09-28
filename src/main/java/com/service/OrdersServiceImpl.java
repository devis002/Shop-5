package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.OrdersDao;

@Service
public class OrdersServiceImpl implements OrdersService {
	@Autowired
	private OrdersDao ordersdao;
	
	@Transactional
	public List getAllOrders() {
		
		return ordersdao.getAllOrders();
	}

}
