package com.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class Email {

	
	@Autowired
	Mailsend mailtouser;
	public void send(String email)
	{
	
		String toAddr = email;
		String fromAddr = "clickdslr@hotmail.com";
 
		// email subject
		String subject = "Clickart welcomes you";
 
		// email body
		String body = "Welcome to the Clickart "+"."+System.getProperty("line.separator")
				+"Thanks to begin with us."+System.getProperty("line.separator")
				+System.getProperty("line.separator")
				+System.getProperty("line.separator")
				+System.getProperty("line.separator")
				+ "------------"+System.getProperty("line.separator")
				+ "-Clickart";
		mailtouser.mailmethod(toAddr, fromAddr, subject, body);
		
		
	}
}
	