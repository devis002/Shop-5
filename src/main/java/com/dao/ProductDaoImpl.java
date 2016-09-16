package com.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Product;

@Repository
public class ProductDaoImpl implements ProductDao{
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(Product product) {
		session.getCurrentSession().save(product);
	}

	@Override
	public void edit(Product product) {
		session.getCurrentSession().update(product);
	}

	@Override
	public void delete(int productId) {		
		session.getCurrentSession().delete(getProduct(productId));
	}

	@Override
	public Product getProduct(int productId) {
		return (Product)session.getCurrentSession().get(Product.class, productId);
	}

	@Override
	public List getAllProduct() {
		return session.getCurrentSession().createQuery("from Product").list();
	}

	@Override
	public List getnikon(String brand) {
		return session.getCurrentSession().createQuery("from Product where category='"+brand+"'").list();
	}


}
