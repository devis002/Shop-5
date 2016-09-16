package com.service;

import java.util.List;

import com.model.CartItems;

public interface CartItemsService {
	public void add(CartItems cart);
	public List getAllProduct();
	public CartItems getProductById(int id);
	public void update(CartItems cart);
	public void delete(int id);

}
