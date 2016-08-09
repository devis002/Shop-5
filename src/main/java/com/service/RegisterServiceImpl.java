package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.RegisterDao;
import com.model.Register;

@Service
public class RegisterServiceImpl implements RegisterService{
	@Autowired
	private RegisterDao registerDao;

	@Transactional
	public void add(Register register) {
		registerDao.add(register);
	}

	@Transactional
	public void edit(Register register) {
		registerDao.edit(register);
		
	}

	@Transactional
	public void delete(int registerId) {
		registerDao.delete(registerId);
	}

	@Transactional
	public Register getRegister(int registerId) {
		return registerDao.getRegister(registerId);
	}

	@Transactional
	public List getAllRegister() {
		return registerDao.getAllRegister();
	}

}
