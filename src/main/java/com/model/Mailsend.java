package com.model;


import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.MailParseException;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class Mailsend {

	@Autowired
	MailSender mailsend;
	 
	@Autowired
	 private JavaMailSender mail;
	 
     public void setMail(JavaMailSender mail)
     {
         this.mail = mail;
     }
	public void mailmethod(String toAddress, String fromAddress, String subject,String msgBody) 
	{
		
		
		try{
			 
            MimeMessage Mimemessage = mail.createMimeMessage();
 
            MimeMessageHelper message = new MimeMessageHelper(Mimemessage, true);
 
            message.setFrom(fromAddress);
            message.setTo(toAddress);
            message.setSubject(subject);
            message.setText(msgBody);
           
 
            FileSystemResource file = new FileSystemResource("F:/projectscreen/FullScreenshot.jpg");
            message.addAttachment(file.getFilename(), file);
 
            mail.send(Mimemessage);    
 
           }catch (MessagingException e) {
                throw new MailParseException(e);
           }
 
            System.out.println("Mail Sent Successfully With Attachment.....!");
        }
 

	}
	
	

