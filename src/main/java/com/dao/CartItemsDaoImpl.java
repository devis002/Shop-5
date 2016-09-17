package com.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.CartItems;


@Repository
public class CartItemsDaoImpl implements CartItemsDao {
	@Autowired
	private SessionFactory sessionFactory;


	
	
	@Override
	public void add(CartItems cartItems) {

		
		sessionFactory.getCurrentSession().save(cartItems);
		
	}

	@Override
	public List getAllProduct() {
		
		return sessionFactory.getCurrentSession().createQuery("from CartItems ").list();

	}

	@Override
	public void update(CartItems cartItems) {
		sessionFactory.getCurrentSession().update(cartItems);
	}

	@Override
	public CartItems getProductById(int id) {
		
		return (CartItems)sessionFactory.getCurrentSession().get(CartItems.class, id);
	}

	@Override
	public void delete(int id) {
		
		sessionFactory.getCurrentSession().delete(getProductById(id));
		
	}

	@Override
	public void drop() {
		
		/*List<CartItems> cidi=cartDao.getAllProduct();
		for(int i=0;i<cidi.size();i++)
		{
			cartDao.delete(cidi.get(i).getCartItemId());
		}*/
		
	}

	


}
