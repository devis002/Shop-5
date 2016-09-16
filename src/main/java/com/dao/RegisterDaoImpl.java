package com.dao;


import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Product;
import com.model.RegistrationDetails;
import com.model.UserAuthorization;


@Repository
@Transactional
public class RegisterDAOImpl implements RegisterDAO {
	
	@Autowired(required=true)
	SessionFactory sessionFactory;
	

@Override
public void saveOrUpdate(RegistrationDetails regDetails){
	//if register done sucessfully it will automatically sets enabled
	regDetails.setEnable(true);
	UserAuthorization ua=new UserAuthorization();
	ua.setRegdet(regDetails);
	//if register done sucessfully it will automatically assign role user
	ua.setRole("ROLE_USER");
	
	sessionFactory.getCurrentSession().saveOrUpdate(regDetails);
	sessionFactory.getCurrentSession().saveOrUpdate(ua);
}


@Override
public void update(RegistrationDetails regDetails) {
	sessionFactory.getCurrentSession().update(regDetails);
	
}


@Override
public List getregbyid(String name) {
	
	return sessionFactory.getCurrentSession().createQuery("from RegistrationDetails where mail_id='"+name+"'").list();
}



}
