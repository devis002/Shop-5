package com.model;

import java.awt.AWTException;
import java.awt.Rectangle;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
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
		try {
            Robot robot = new Robot();
            String format = "jpg";
            String fileName = "F:/projectscreen/FullScreenshot." + format;
             
            Rectangle screenRect = new Rectangle(Toolkit.getDefaultToolkit().getScreenSize());
            BufferedImage screenFullImage = robot.createScreenCapture(screenRect);
            ImageIO.write(screenFullImage, format, new File(fileName));
             
            System.out.println("A full screenshot saved!");
        } catch (AWTException | IOException ex) {
            System.err.println(ex);
        }
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
