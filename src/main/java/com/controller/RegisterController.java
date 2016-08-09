package com.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.Register;
import com.service.RegisterService;


@Controller
public class RegisterController {
	@Autowired
	private RegisterService registerService;
	
	
	@RequestMapping("/register")
	public String setupregForm(Map<String, Object> map){
		Register register = new Register();
		map.put("register", register);
		map.put("registerList", registerService.getAllRegister());
		return "register";
	}
	@RequestMapping(value="/register.do", method=RequestMethod.POST)
	public String doregActions(@ModelAttribute Register register, BindingResult result, @RequestParam String action, Map<String, Object> map){
		Register registerResult = new Register();
		switch(action.toLowerCase()){	
		case "add":
			registerService.add(register);
			registerResult = register;
			break;
		case "edit":
			registerService.edit(register);
			registerResult = register;
			break;
		case "delete":
			registerService.delete(register.getId());
			registerResult = new Register();
			break;
		case "search":
			Register searchedRegister = registerService.getRegister(register.getId());
			registerResult = searchedRegister!=null ? searchedRegister : new Register();
			break;
		}
		map.put("register", registerResult);
		map.put("registerList", registerService.getAllRegister());
		return "register";
	}
}
