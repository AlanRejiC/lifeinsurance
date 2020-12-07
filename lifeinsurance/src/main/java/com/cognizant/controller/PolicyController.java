package com.cognizant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cognizant.service.PolicyService;

@Controller
@ComponentScan("com.service")
public class PolicyController {
	
	@Autowired
	PolicyService policyService;
	
	@RequestMapping(value = "/getPolicyPage", method=RequestMethod.GET)
	public String policyPage(){
		return "policy";
	}

	
}
