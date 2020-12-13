package com.cognizant.controller;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@ComponentScan("com.service")
public class NewFileController {
	
	@RequestMapping(value = "/getNewPage", method = RequestMethod.GET)
	public String Page() {
		return "NewFile";
	}
	
	@RequestMapping(value = "/getAboutUs", method = RequestMethod.GET)
	public String aboutPage() {
		return "aboutUsjsp";
	}
	

}
