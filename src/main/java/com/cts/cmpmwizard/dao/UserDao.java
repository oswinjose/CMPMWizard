package com.cts.cmpmwizard.dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.cts.cmpmwizard.beans.User;
import com.cts.cmpmwizard.repositories.UserRepository;

@Component("userdao")
public class UserDao {

	private static final Logger logger = LoggerFactory.getLogger(UserDao.class);
	
	@Autowired
	@Qualifier("mongoRepository")
	private UserRepository repository;
	
	public void addUser(User user){
		logger.info("Adding user");
		repository.save(user);
		System.out.println("Added "+user);
	}
}
