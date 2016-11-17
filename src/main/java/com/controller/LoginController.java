package com.controller;

import javax.mail.MessagingException;
import javax.mail.internet.AddressException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.EmailAPI;
import com.model.RegistrationDetails;


@Controller
public class LoginController {
	@Autowired
	EmailAPI emailapi;
	
	/*controller for message in login page*/
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginPage(@RequestParam(value = "error",required = false) String error,
	@RequestParam(value = "logout",	required = false) String logout) {
		
		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid Credentials provided.");
		}

		if (logout != null) {
			model.addObject("message", "Logged out successfully.");
		}

		model.setViewName("login");
		return model;
	}
	
	@RequestMapping(value="password/forgotpassword",method=RequestMethod.POST)
	public String forgotpassword(@ModelAttribute RegistrationDetails registrationDetails,BindingResult result) throws AddressException, MessagingException{
				
		
		String toAddr = registrationDetails.getMail_id();
		String fromAddr = "clickartdlsr@gmail.com";
		String subject = "Clickart Forgot Password";
		String body ="Please find the password in  this mail.....Keep it secure.....Your Password is "+"india";
		
		try{
			
			emailapi.mailmethod(toAddr, fromAddr, subject, body);
		}
		
		catch(Exception e){
			System.out.println("an exception occured"+e);
			e.printStackTrace();
		}
		
		return "redirect:/login";
		
	}
}