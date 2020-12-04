package com.cognizant.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;

import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cognizant.model.User;
import com.cognizant.service.UserService;


@Controller
@ComponentScan("com.service")
public class LoginController {
	
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/getHomePage", method = RequestMethod.GET)
	public String homePage() {
		return "homepage";
	}

	@RequestMapping(value = "/getSignUpPage", method = RequestMethod.GET)
	public String getSignUp(@ModelAttribute("user") User user) {
		return "userRegistration";
	}

	@RequestMapping(value = "/getSignUpPage", method = RequestMethod.POST)
	public String getSuccess1(@Valid @ModelAttribute("user") User user, BindingResult result) {
		if (result.hasErrors()) {
			return "userRegistration";
		} else {
			return "success";
		}

	}
	@RequestMapping(value = "/getLoginPage", method = RequestMethod.GET)
	public String getLoginPage(@ModelAttribute("user") User user) {
		return "login";
	}
	
	@RequestMapping(value = "/getLoginPage", method = RequestMethod.POST)
	public String getSuccess2(@Valid @ModelAttribute("user") User user, BindingResult result) {
		if (result.hasErrors()) {
			return "login";
		} else {
			return "success";
		}
	}
}
