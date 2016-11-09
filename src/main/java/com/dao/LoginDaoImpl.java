package com.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.RegistrationDetails;

@Repository
public class LoginDaoImpl implements LoginDao {

	@Autowired
	private SessionFactory sessionfactory;
	
	@Override
	public boolean checkUser(RegistrationDetails reg) {
		boolean isvaliduser=false;
		
		Query q=sessionfactory.openSession().createQuery("from RegistrationDetails where mail_id= '"+reg.getMail_id()+"'");
		List<RegistrationDetails> ul= q.list();
		int s=ul.size();
		if(s==1)
		{
			isvaliduser=true;
		}
		
		return isvaliduser;
		
	}

}
