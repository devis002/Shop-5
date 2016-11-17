package com.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.service.LoginService;
import com.service.RegisterService;

@Component
public class RegistrationHandler {
	@Autowired
	private LoginService loginservice;

	public RegistrationDetails  startFlow() {
		
		System.out.println("RegistrationDetail objects gets created");
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
	
	public String loginuser(RegistrationDetails regdetails) {
		boolean isvaliduser = false;
		String status = "success";
		isvaliduser = loginservice.checkUser(regdetails);
		if (isvaliduser == true) {
			return status = "failure";
		}

		return status;

	}
	
	@Autowired 
	RegisterService regser;
	
	public  void saveRegister(RegistrationDetails regDetails){
		
		regser.saveOrUpdate(regDetails);
		
	}
	
	
	public String validateDetails(RegistrationDetails newuser,MessageContext messageContext){
		String status = "success";
		if(newuser.getName().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"name").defaultText("Name Cannot Be Empty cannot be Empty").build());
			status = "failure";
		}
		if(newuser.getMail_id().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"mail_id").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		
		if(newuser.getPassword().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"password").defaultText("password cannot be Empty").build());
			status = "failure";
		}
		if(newuser.getConfirm_password().isEmpty()){
			{
				if(newuser.getPassword() != (newuser.getConfirm_password()))
					
			messageContext.addMessage(new MessageBuilder().error().source(
					"confirmPassword").defaultText("Conformation password not valid").build());
			status = "failure";
			}
		}
		if(newuser.getPassword().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"phonenumber").defaultText("Phone number cannot be Empty").build());
			status = "failure";
		}
			
		return status;
	}
}
	

