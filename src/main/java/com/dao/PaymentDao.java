package com.dao;

import java.util.List;

import com.model.Cart;

public interface PaymentDao {

	public void addcart(String username,Cart cart);
	public void order(String username);
	public void CartItems();
	public List getallorders();
}
