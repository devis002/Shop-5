package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.model.CartItems;
import com.model.Product;
import com.service.CartItemsService;
import com.service.PaymentService;

@Controller
public class PaymentController {
	@Autowired
	private  PaymentService paymentService;
	@Autowired
	private CartItemsService cartItems;
	/* @ModelAttribute
	 @RequestMapping("/sucess")
	 //for mapping the order table and cart table with customer table after sucessful purchase
	public String getuserdata(HttpServletRequest req)
	{	//for getting the loggedin username
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String name = auth.getName(); 
	      paymentService.add(name);
	      paymentService.order(name);
	      paymentService.CartItems();
	      return"sucess";
	      
	}*/
	 
	//angular view get all the product details from the table
		@RequestMapping("/sucess")
		 public @ResponseBody List<CartItems> getAllProds() {
		  List<CartItems> l =null;
		  try{
		  l= cartItems.getAllProduct();
		   }
		  catch(Exception es)
		  {
		   l=null;
		  }
		  return l;
		 }


}
