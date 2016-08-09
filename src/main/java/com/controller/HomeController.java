package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController {
	
	@RequestMapping("/login")
	public String newuse()
	{
		return "login";
	}
	
	@RequestMapping("/nikon")
	public String getnikon()
	{
		return ("nikon");
	}
	@RequestMapping("/nikond3100")
	public String getnikond3100()
	{
		return ("nikond3100");
	}
	@RequestMapping("/nikond3200")
	public String getnikond3200()
	{
		return ("nikond3200");
	}
	@RequestMapping("/nikond3300")
	public String getnikond3300()
	{
		return ("nikond3300");
	}
	@RequestMapping("/nikond5200")
	public String getnikond5200()
	{
		return ("nikond5200");
	}
	@RequestMapping("/nikond5300")
	public String getnikond5300()
	{
		return ("nikond5300");
	}
	@RequestMapping("/nikond5500")
	public String getnikond5500()
	{
		return ("nikond5500");
	}
	@RequestMapping("/canon")
	public String getcanon()
	{
		return ("canon");
	}
	@RequestMapping("/")
	public String viewindex()
	{
		return "index";
	}
	
	@RequestMapping("/upload")
	private String Upload()
	{
		return "upload";
	}
	
}
