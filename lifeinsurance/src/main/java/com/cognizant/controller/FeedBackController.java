package com.cognizant.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.cognizant.model.Help;
import com.cognizant.model.Insurance;
import com.cognizant.model.Questionnaire;
import com.cognizant.service.QuestionnaireService;
import com.cognizant.service.UserService;

@Controller
public class FeedBackController {
	
	@Autowired
	 private QuestionnaireService questionnaireService;
	
	 @Autowired
	 private UserService userService;
	 
	 
	 @GetMapping(value = "/getFeedBackPage")
	    public String getFeedBackPage(@ModelAttribute("questionnaire") Questionnaire questionnaire) {
	        return "feedbackform";
	    }
	 
	 @PostMapping(value = "/getFeedBackPage")
	    public String postFeedBackPage(@ModelAttribute("questionnaire") Questionnaire questionnaire, ModelMap map) {
		 map.addAttribute("success", "Your FeedBack Details has been successfully Submitted");
	       questionnaireService.saveResponse(questionnaire);
	       
	        return "feedbackform";
	    }

}
