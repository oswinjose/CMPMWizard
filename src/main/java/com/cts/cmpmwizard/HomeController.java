package com.cts.cmpmwizard;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cts.cmpmwizard.beans.LoginUser;
import com.cts.cmpmwizard.beans.User;
import com.cts.cmpmwizard.services.LoginService;
import com.cts.cmpmwizard.services.RegistrationService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	@Qualifier("register")
	private RegistrationService registerUser;
	@Autowired
	@Qualifier("login")
	private LoginService loginService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(@ModelAttribute("loginUser") LoginUser user) {
		
		return "home";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(@ModelAttribute("loginUser") LoginUser user) {
		
		return "home";
	}
	
	@RequestMapping(value = "/handleLogin", method = RequestMethod.POST)
	public String handleLogin(@ModelAttribute("loginUser") LoginUser user,Model model) {
		
		User authUser = loginService.doLogin(user);
		logger.info("Inside controller -- found user : "+authUser);
		model.addAttribute("AUTH_STATUS","SUCCESS");
		model.addAttribute("user",user);
		return "userhome";
	}
	
	@RequestMapping(value = "/setup", method = RequestMethod.GET)
	public String setup(@ModelAttribute("user") User user) {
		logger.info("------------------> Inside setup view ");
		return "setup";
	}
	
	@RequestMapping(value = "/handleSetup", method = RequestMethod.POST)
	public String handleSetup(@ModelAttribute("user") User user, Model model) {
		logger.info("------------------> Inside setup view ");
		model.addAttribute("name", user.getFullName());
		model.addAttribute("AUTH_STATUS","SUCCESS");
		model.addAttribute("user",user);
		registerUser.doRegister(user);
		
		logger.info("------------------> After saving user");
		return "userhome";
	}
}
