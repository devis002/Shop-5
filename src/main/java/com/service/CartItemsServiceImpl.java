package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CartItemsDao;
import com.model.CartItems;
@Service
public class CartItemsServiceImpl implements CartItemsService {

	@Autowired(required=true)
	private CartItemsDao cartDao;
	
	@Transactional
	public void add(CartItems cart) {
		
		cartDao.add(cart);
		
	}

	@Transactional
	public List getAllProduct() {
		return cartDao.getAllProduct();
	}

	@Transactional
	public void update(CartItems cart) {
		cartDao.update(cart);
	}

	@Transactional
	public CartItems getProductById(int id) {
		
		return cartDao.getProductById(id);
	}

	@Transactional
	public void delete(int id) {
		 cartDao.delete(id);
	}

	@Transactional
	public List getbyname(String name) {
		return cartDao.getbyname(name);
	}

	@Transactional
	public int cartLength() {
		return cartDao.cartLength();
	}

}
