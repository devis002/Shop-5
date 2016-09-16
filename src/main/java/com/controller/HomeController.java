package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

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
	public String viewindex() {
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
