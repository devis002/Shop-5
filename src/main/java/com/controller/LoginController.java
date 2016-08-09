package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.Register;
import com.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	private LoginService logser;

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public ModelAndView getlogin(@ModelAttribute("userForm") Register reg, BindingResult bs) {
		ModelAndView mv = null;
		boolean ck = logser.check(reg);
		if (ck) {
			mv = new ModelAndView("profile");
			mv.addObject("msg", "successfully logged in");
			mv.addObject("name", reg.getUsername());
		} else {
			mv = new ModelAndView("login");
			mv.addObject("msg", "error un and pwd");
		}
		return mv;
	}

}
