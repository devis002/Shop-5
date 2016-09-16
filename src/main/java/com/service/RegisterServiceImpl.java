package com.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.RegisterDAO;
import com.model.RegistrationDetails;


@Service
@Transactional
public class RegisterServiceImpl implements RegisterService{
	
	@Autowired 
	RegisterDAO registerDAO;
	
	public void saveOrUpdate(RegistrationDetails regDetails){
		
		registerDAO.saveOrUpdate(regDetails);
	}

	
}
