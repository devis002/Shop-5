package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.PaymentDao;

@Service
public class PaymentServiceImpl implements PaymentService {
	
	@Autowired
	private PaymentDao PaymentDao;
	@Transactional
	public void add(String username) {
		PaymentDao.addcart(username);
	
		
	}
	@Transactional
	public void order(String username) {
		PaymentDao.order(username);
		
	}
	@Transactional
	public void CartItems() {
		PaymentDao.CartItems();
		
	}
	
	

}
