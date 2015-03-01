package com.cts.cmpmwizard.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.cts.cmpmwizard.beans.User;
import com.cts.cmpmwizard.dao.UserDao;
import com.cts.cmpmwizard.repositories.UserRepository;


@Component("register")
public class RegistrationService {

	@Autowired
	@Qualifier("userdao")
	private UserDao userDao;
	
	public void doRegister(User user){
		userDao.addUser(user);
	}
	
	public void doUpdatePassword(User user){
		
	}
	
}
