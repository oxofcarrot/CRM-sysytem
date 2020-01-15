package com.mortal.CRMSYSTEM.service;

import java.util.ArrayList;


import com.mortal.CRMSYSTEM.vo.username;



public interface UsernameService {

	public ArrayList<username> getAllUsername();

	public void saveOneUsername(username m);

	public boolean removeOneUsername(String id);
	
	public boolean updateOneUsername(String id);

	public username findByCode(String code);





	


	
	
	
}