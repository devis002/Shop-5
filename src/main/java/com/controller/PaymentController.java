package com.controller;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Cart;
import com.model.CartItems;
import com.model.Email;
import com.model.Orders;
import com.service.CartItemsService;
import com.service.PaymentService;

@Controller
public class PaymentController {
	@Autowired
	private  PaymentService paymentService;
	@Autowired
	private CartItemsService cartItems;
	@Autowired
	private Email email;
	@Autowired
	private ProductController productController;
	
	 
	@ModelAttribute
	 @RequestMapping("/sucess")
	 //for mapping the order table and cart table with customer table after sucessful purchase
	public String getuserdata(HttpServletRequest req)
	{	//for getting the loggedin username
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String name = auth.getName(); 
		 List<CartItems> list=cartItems.getAllProduct();
		 Cart cart=new Cart();
		 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd ");
	     Date date = new Date();
	     DateFormat dateFormats = new SimpleDateFormat("hh:mm:ss a");
	     Calendar cal = Calendar.getInstance();
	     productController.updateproduct(list);
		 for (int i=0;i<list.size();i++)
		 {
		     String Date=dateFormat.format(date);
             String Time=dateFormats.format(cal.getTime());
			 cart.setDate(Date);
			 cart.setTime(Time);
             cart.setProduct(list.get(i).getProduct());
			 cart.setQuantity(list.get(i).getQuantity());
			 paymentService.add(name,cart);  
			 
		 }
		   
	     paymentService.order(name);
	     List<Orders> ordlist=paymentService.getallorders();
	     email.send(name,ordlist.get(ordlist.size()-1).getOrderId());
	     paymentService.CartItems();	      
	      return"sucess";
	     }
			
		
}
