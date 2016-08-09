package com.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Register;

@Repository
public class LoginDaoImpl implements LoginDao{
	@Autowired
	private SessionFactory sf;
	
	public boolean isvalid;

	@Override
	public boolean check(Register reg) {
		List<Register>l=sf.getCurrentSession().createQuery("from Register where username'"+reg.getUsername()+"'and password'"+reg.getPassword()+"'").list();
		if(l.size()==2){
			isvalid=true;
		}
			return isvalid;
		}
	}
	
	
