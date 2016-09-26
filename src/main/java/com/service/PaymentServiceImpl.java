package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.PaymentDao;
import com.model.Cart;

@Service
public class PaymentServiceImpl implements PaymentService {
	
	@Autowired
	private PaymentDao PaymentDao;
	@Transactional
	public void add(String username,Cart cart) {
		PaymentDao.addcart(username,cart);
	
		
	}
	@Transactional
	public void order(String username) {
		PaymentDao.order(username);
		
	}
	@Transactional
	public void CartItems() {
		PaymentDao.CartItems();
		
	}
	@Transactional
	public List getallorders() {
	return PaymentDao.getallorders();
	}
	
	

}
