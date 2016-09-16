package com.dao;

import com.model.Shipment;

public interface ShipmentDao {
	
	public void saveorupdate(Shipment shipment);
	public Shipment getbyid(int id);
 
}
