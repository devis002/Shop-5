package com.model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

@Service
public class Mailsend {

	@Autowired
	MailSender mailsend;

	public void mailmethod(String toAddress, String fromAddress, String subject,String msgBody) 
	{
		SimpleMailMessage msgdetails = new SimpleMailMessage();
		msgdetails.setFrom(fromAddress);
		msgdetails.setTo(toAddress);
		msgdetails.setSubject(subject);
		/*for(int i=0;i<msgBody.size();i++)
		{
			msgdetails.setText(msgBody.get(i).getProduct().getProductname());
		}*/
		
		mailsend.send(msgdetails);

	}

}
