package com.service;

import java.util.List;

import com.model.Cart;

public interface PaymentService {
	
	public void add(String username,Cart cart);
	public void order(String username);
	public void CartItems();
	public List getallorders();

}
