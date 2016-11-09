package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.LoginDao;
import com.model.RegistrationDetails;

@Service
public class LoginServiceImpl implements LoginService{

	@Autowired
	private LoginDao logindao;
	
	@Transactional
	public boolean checkUser(RegistrationDetails reg) {
		
		boolean check=false;
		check=logindao.checkUser(reg);
		if(check==true){
			check=true;
		}
		return check;
	}

}
