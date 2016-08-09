package com.service;

import java.util.List;

import com.model.Register;

public interface RegisterService {
	public void add(Register register);
	public void edit(Register register);
	public void delete(int registerId);
	public Register getRegister(int registerId);
	public List getAllRegister();

}
