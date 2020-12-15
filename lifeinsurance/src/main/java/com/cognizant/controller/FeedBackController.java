package com.cognizant.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.cognizant.model.Help;
import com.cognizant.model.Insurance;
import com.cognizant.model.Questionnaire;
import com.cognizant.model.User;
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
	public String postFeedBackPage(@ModelAttribute("questionnaire") Questionnaire questionnaire, BindingResult result,
			ModelMap map) {
System.out.println("inside feedback");
		try {

				map.addAttribute("success", "Your FeedBack Details has been successfully Submitted");
				String str = LocalDateTime.now() + "";
				String str1[] = str.split("-|:|T");
				str = str1[1] + str1[2] + str1[3] + str1[4] + str1[5].charAt(0) + str1[5].charAt(1);
				System.out.println(str);
				Questionnaire question = questionnaireService.findUser(10004);
				System.out.println(question);
				String str0 = question.getQuestion1();
				String str2 = question.getQuestion2();
				String str3 = question.getQuestion3();
				questionnaire.setQuestion1(str0);
				questionnaire.setQuestion2(str2);
				questionnaire.setQuestion3(str3);
				map.addAttribute("q1", questionnaire.getQuestion1());
				map.addAttribute("q2", questionnaire.getQuestion2());
				map.addAttribute("q3", questionnaire.getQuestion3());


//		 questionnaire.setResponse1("");
//		 questionnaire.setResponse2("");
//		 questionnaire.setResponse3("");
				questionnaire.setId(Integer.parseInt(str));

				questionnaireService.saveResponse(questionnaire);

				return "feedbackform";
			
		} catch (Exception e) {
			map.addAttribute("invalid", "Please fill the details in the form");
			return "feedbackform";
		}
	}

	@ModelAttribute("securityList")
	public List<String> listSecurity() {
		List<String> list = new ArrayList<String>();
		list.add("Where were you born ?");
		list.add("What was your first pet ?");
		list.add("What is your Mothers maiden name ?");
		list.add("What is your favourite sport ?");
		list.add("What is your favourite hobby ?");
		list.add("Where did you go to college ?");
		list.add("Choose a number between 1 and 100");
		return list;
	}
}