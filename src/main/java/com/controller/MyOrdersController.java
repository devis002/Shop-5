package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.CartItems;
import com.service.CartItemsService;

@Controller
public class MyOrdersController {
	
	@Autowired
	CartItemsService cartitemsService;
	
	@RequestMapping("/myorders")
	public String getCartItems(Model map)
	{
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 String name = auth.getName(); 
		CartItems cart=new CartItems();
		map.addAttribute("cart", cart);
		map.addAttribute("cartList", cartitemsService.getbyname(name));
		return "myorders";
	}

}
