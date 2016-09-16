package com.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Shipment;


@Repository
@Transactional
public class ShipmentDaoImpl  implements ShipmentDao{
	
	@Autowired(required=true)
	SessionFactory sessionFactory;

	@Override
	public void saveorupdate(Shipment shipment) {
		sessionFactory.getCurrentSession().saveOrUpdate(shipment);
		
	}

	@Override
	public Shipment getbyid(int id) {
		return (Shipment)sessionFactory.getCurrentSession().get(Shipment.class,id);
		
	}
	

}
