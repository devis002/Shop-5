package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Cart;
import com.model.CartItems;
import com.model.Orders;
import com.model.RegistrationDetails;
import com.model.Shipment;
import com.service.ShipmentService;

@Repository
public class PaymentDaoImpl implements PaymentDao {
	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	CartItemsDao cartItemsDao;
	@Autowired
	ShipmentService shipser;
	@Autowired 
	RegisterDAO registerDAO;
	
	
	public void addcart(String username,Cart cart)
	{
		
		RegistrationDetails registrationDetails=new RegistrationDetails();
		
		//set mailid in cart object
		registrationDetails.setMail_id(username);
		cart.setRegistrationDetails(registrationDetails);
		
		//get list of product
		List<CartItems> li=cartItemsDao.getAllProduct();
		
		//to store the grand total
		int tot=0;
		for(int i=0;i<li.size();i++)
		{
			tot=(int) (tot+(li.get(i).getTotalPrice()));
		}
		
		//set the grand total in cart object
		cart.setGrandTotal(tot);
		sessionFactory.getCurrentSession().save(cart);
		}
	
	
	public void order(String username) {
		Orders orders=new Orders();
		Cart ct=new Cart();
		RegistrationDetails registrationDetails=new RegistrationDetails();
		
		//set the mail id in registration detail object and the pass it to orders object
		registrationDetails.setMail_id(username);
		orders.setRegdet(registrationDetails);
		
		//get list of product in cart based on mailid
		List<Cart> ca=sessionFactory.getCurrentSession().createQuery("from Cart where mail_id='"+username+"'").list();
		ct.setCartId(ca.get(0).getCartId());
		orders.setCart(ct);
		
		//get list of product in shipment based on mailid and store the latest one
		List<Shipment> shr=sessionFactory.getCurrentSession().createQuery("from Shipment where mail_id='"+username+"'").list();
		orders.setShipment(shr.get(shr.size()-1));
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(orders);
		
		//get the username and set the latest cartid in the customer table
		registerDAO.getregbyid(username);
		List<RegistrationDetails> rs=registerDAO.getregbyid(username);
		registrationDetails=rs.get(0);
		registrationDetails.setCart(ca.get(ca.size()-1));
		registerDAO.update(registrationDetails);
		
	
	}

	@Override
	public void CartItems() {
		sessionFactory.getCurrentSession().createSQLQuery("Truncate table Cartitems").executeUpdate();
		
	}


	@Override
	public List getallorders() {
		return sessionFactory.getCurrentSession().createQuery("from Orders").list();
		
		
	}

	
}
