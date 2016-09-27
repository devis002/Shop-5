package com.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.Hub;
import com.service.HubService;


@Controller
public class HubController {
	@Autowired
	HubService hubService;
	
	@RequestMapping("/Trackmanage")
	public String setupForm(Map<String, Object> map){
		Hub hub=new Hub();
		map.put("hub",hub);
		//map.put("productList", productService.getAllProduct());
		return "Trackmanage";
	}
	
	@RequestMapping(value="/trackoperation", method=RequestMethod.POST)
	public String doActions(@ModelAttribute Hub hub, BindingResult result, @RequestParam String action, Map<String, Object> map){
		Hub hubResult=new Hub();
		switch(action.toLowerCase()){	
		case "add":
			DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd ");
		     Date date = new Date();
		     DateFormat dateFormats = new SimpleDateFormat("hh:mm:ss a");
		     Calendar cal = Calendar.getInstance();
		     String Date=dateFormat.format(date);
             String Time=dateFormats.format(cal.getTime());
		     hub.setDate(Date);
		     hub.setTime(Time);
			hubService.add(hub);
			hubResult = hub;
			break;
		case "edit":
			hubService.edit(hub);
			hubResult = hub;
			break;
		
		}
		map.put("product", hubResult);
		//map.put("productList", productService.getAllProduct());
		return "Trackmanage";
	}
	
	@RequestMapping("/getorders")
	public String getorders(@ModelAttribute Hub hub,Map<String, Object> map)
	{	int id=hub.getOrderId();
		System.out.println("inside getorders");
		System.out.println(id);
		map.put("hub",hub);
		map.put("hubList", hubService.getallorders(id));
		return "TrackMyOrder";
	}
}
