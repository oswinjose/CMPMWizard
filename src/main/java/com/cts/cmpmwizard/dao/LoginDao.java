package com.cts.cmpmwizard.dao;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.cts.cmpmwizard.beans.LoginUser;
import com.cts.cmpmwizard.beans.User;
import com.cts.cmpmwizard.repositories.UserRepository;

@Component("logindao")
public class LoginDao {
	
private static final Logger logger = LoggerFactory.getLogger(LoginDao.class);
	
	@Autowired
	@Qualifier("mongoRepository")
	private UserRepository repository;
	
	public User doLogin(LoginUser user){
		
		logger.info("Authenticating "+user);
		
		User authUser = repository.findOne(user.getId());
		
		if(null!=authUser){
			logger.info("Found "+authUser);
		}
		return authUser;
	}

}
