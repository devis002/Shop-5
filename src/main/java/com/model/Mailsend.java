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
		/*SimpleMailMessage msgdetails = new SimpleMailMessage();
		msgdetails.setFrom(fromAddress);
		msgdetails.setTo(toAddress);
		msgdetails.setSubject(subject);
		msgdetails.setText(msgBody);
		mailsend.send(msgdetails);
		*/
		
		try{
			 
            MimeMessage Mimemessage = mail.createMimeMessage();
 
            MimeMessageHelper message = new MimeMessageHelper(Mimemessage, true);
 
            message.setFrom(fromAddress);
            message.setTo(toAddress);
            message.setSubject(subject);
            message.setText(msgBody);
            //message.setText("My alternative text", true);
            //message.addBcc("BCC email");
            //message.addCc("CC email");
 
            FileSystemResource file = new FileSystemResource("F:/projectscreen/FullScreenshot.jpg");
            message.addAttachment(file.getFilename(), file);
 
            mail.send(Mimemessage);    
 
           }catch (MessagingException e) {
                throw new MailParseException(e);
           }
 
            System.out.println("Mail Sent Successfully With Attachment.....!");
        }
 

	}
	
	

