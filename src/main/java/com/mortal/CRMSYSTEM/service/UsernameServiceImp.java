package com.mortal.CRMSYSTEM.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.mortal.CRMSYSTEM.dao.UsernameDao;
import com.mortal.CRMSYSTEM.vo.username;



@Service

public   class UsernameServiceImp implements UsernameService {

	@Autowired
	private UsernameDao crmsystemDao;
	
	public ArrayList<username> getAllUsername() {
		return (ArrayList<username>) crmsystemDao.findAll();
	}

	public void saveOneUsername(username m) {
		crmsystemDao.save(m);
	}

	public boolean removeOneUsername(String id) {
		// TODO Auto-generated method stub
		crmsystemDao.delete(id);
		return false;
	}

	public boolean updateOneUsername(String id) {
		// TODO Auto-generated method stub
		
		return false;
	}

	public username findByCode(String code) {
		return crmsystemDao.findByCode(code);
	}

	

}
	

