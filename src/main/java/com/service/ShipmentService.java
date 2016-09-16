package com.service;

import com.model.Shipment;

public interface ShipmentService {
	
	public void saveorupdate(Shipment shipment);
	public Shipment getbyid(int id);

}
