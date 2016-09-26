package com.dao;

import java.util.List;

import com.model.CartItems;

public interface CartItemsDao {
	
	public void add(CartItems CartItems);
	public List getAllProduct(); 
	public void update(CartItems CartItems);
	public CartItems getProductById(int id);
	public void delete(int id);
	public List getbyname(String name);
	public int cartLength();

}
