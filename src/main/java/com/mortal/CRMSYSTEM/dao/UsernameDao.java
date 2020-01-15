package com.mortal.CRMSYSTEM.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mortal.CRMSYSTEM.vo.username;

public interface UsernameDao extends JpaRepository<username, String>{
	username findByCode(String code);
}
