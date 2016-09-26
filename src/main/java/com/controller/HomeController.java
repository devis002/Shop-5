package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.CartItemsService;

@Controller
public class HomeController {
	@Autowired
	CartItemsService cartService;
	
	@RequestMapping("/crudoper")
	public String prod()
	{
		return "product";
	}
	
	@RequestMapping("/login")
	public String newuse() {
		return "login";
	}

	@RequestMapping("/nikon")
	public String getnikon() {
		return ("nikon");
	}

	
	@RequestMapping("/canon")
	public String getcanon() {
		return ("canon");
	}
	
	@RequestMapping({ "/", "index","home" })
	public String viewindex(HttpSession session) {
		session.setAttribute("cartlength", cartService.cartLength());
		return "index";
	}

	@RequestMapping("/upload")
	private String Upload() {
		return "upload";
	}
	
	@RequestMapping("/viewall2")
	public String prdetail()
	{
		return"viewall2";
	}
	
	
	
	
}
