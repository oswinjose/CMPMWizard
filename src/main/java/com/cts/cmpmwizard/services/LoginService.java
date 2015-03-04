package com.cts.cmpmwizard.services;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.cts.cmpmwizard.beans.LoginUser;
import com.cts.cmpmwizard.beans.User;
import com.cts.cmpmwizard.dao.LoginDao;

@Component("login")
public class LoginService {

	private static final Logger logger = LoggerFactory.getLogger(LoginService.class);
	
	@Autowired
	@Qualifier("logindao")
	private LoginDao loginDao;
	
	public User doLogin(LoginUser user){
		logger.info("Inside login service");
		return loginDao.doLogin(user);
	}
	
}
