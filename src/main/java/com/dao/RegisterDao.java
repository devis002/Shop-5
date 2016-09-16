package com.dao;


import java.util.List;

import com.model.RegistrationDetails;


public interface RegisterDAO {

	public void saveOrUpdate(RegistrationDetails regDetails);
	public void update(RegistrationDetails regDetails);
	public List getregbyid(String name);
	
}
