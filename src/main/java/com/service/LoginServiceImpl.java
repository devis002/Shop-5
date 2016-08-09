package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.LoginDaoImpl;
import com.model.Register;
@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	private LoginDaoImpl ldi;
	
	boolean isvalid;
	@Transactional
	public boolean check(Register reg) {
		if(isvalid==true)
		{
			isvalid=true;
		}
		return isvalid;
	}

}
