package com.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class DemoHandler {
	public RegistrationDetails initFlow(){
		return new RegistrationDetails();
	}
	@Autowired
	EmailAPI mailtouser;
	public void send(RegistrationDetails registrationDetails)
	{
	
		String toAddr = registrationDetails.getMail_id();
		String fromAddr = "clickdslr@hotmail.com";
 
		// email subject
		String subject = "Clickart welcomes you";
 
		// email body
		String body = "Welcome to the Clickart "+registrationDetails.getName()+"."+System.getProperty("line.separator")
				+"Thanks to begin with us."+System.getProperty("line.separator")
				+System.getProperty("line.separator")
				+System.getProperty("line.separator")
				+System.getProperty("line.separator")
				+ "------------"+System.getProperty("line.separator")
				+ "-Clickart";
		mailtouser.mailmethod(toAddr, fromAddr, subject, body);
		
		
	}
	
	
}
