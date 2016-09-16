package com.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;

import com.service.PaymentService;
import com.service.ShipmentService;

@Component
public class ShipmentHandler {
	@Autowired
	private  PaymentService paymentService;
	
	@Autowired
	HttpServletRequest req;
	public Shipment initFlow(){
		System.out.println("Shipment Object gets created");
		return new Shipment();
		
	}
	
	@Autowired
	ShipmentService shipser;
	public void saveaddress(Shipment shipment)
	{	  String username;
		  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	      String name = auth.getName(); 
	      HttpSession ses=req.getSession();
	      ses.setAttribute("u", name);
	      username=(String)ses.getAttribute("u");
	     // System.out.println((String)ses.getAttribute("u"));
	      RegistrationDetails registrationDetails=new RegistrationDetails();
	      registrationDetails.setMail_id(username);
		shipment.setRegistrationDetails(registrationDetails);
		int id=shipment.getShipid();
		shipser.saveorupdate(shipment);
		//paymentService.order(username,id);
	}
	

}
