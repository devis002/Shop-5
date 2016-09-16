package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


import com.service.PaymentService;

@Controller
public class PaymentController {
	@Autowired
	private  PaymentService paymentService;
	
	
	 @ModelAttribute
	 @RequestMapping("/sucess")
	 //for mapping the order table and cart table with customer table after sucessful purchase
	public String getuserdata(HttpServletRequest req)
	{	//for getting the loggedin username
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String name = auth.getName(); 
	      paymentService.add(name);
	      paymentService.order(name);
	      //paymentService.cartitemtbl();
	      return"sucess";
	      
	}

}
