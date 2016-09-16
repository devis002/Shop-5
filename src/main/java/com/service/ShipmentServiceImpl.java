package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ShipmentDao;
import com.model.Shipment;

@Service
@Transactional
public class ShipmentServiceImpl implements ShipmentService {
	@Autowired
	ShipmentDao shipmentdao;
	
	public void saveorupdate(Shipment shipment) {
		shipmentdao.saveorupdate(shipment);
	}

	
	public Shipment getbyid(int id) {
		return shipmentdao.getbyid(id);
		
	}
	

}
