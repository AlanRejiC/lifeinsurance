package com.cognizant.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cognizant.model.User;
import com.cognizant.service.UserService;
import com.cognizant.validate.RegistrationValidator;


@Controller
@ComponentScan("com.service")
public class LoginController {
	
	@Autowired
	private UserService userService;

	@Autowired
	private RegistrationValidator registrationValidator;

	
	@RequestMapping(value = "/getHomePage", method = RequestMethod.GET)
	public String homePage() {
		return "homepage";
	}

	@RequestMapping(value = "/getSignUpPage", method = RequestMethod.GET)
	public String getSignUp(@ModelAttribute("user") User user) {

		return "userRegistration";
	}

	@RequestMapping(value = "/getSignUpPage", method = RequestMethod.POST)
	public String getSuccess1(@ModelAttribute("user") @Valid User user, BindingResult result) {
		registrationValidator.validate(user,result);
		
		//System.out.println("hello");
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors());
			
			//System.out.println("middle");
			return "userRegistration";
		} 
		user.setRole("customer"); // Setting the role to customer
		user.setAns1(" "); // These functionalities are a part of a later User Story
		user.setAns2(" ");
		user.setAns3(" ");
		user.setSecurity1(" ");
		user.setSecurity2(" ");
		user.setSecurity3(" ");		
		System.out.println(user);
		userService.saveUser(user);
		return "success";
	}
	@RequestMapping(value = "/getLoginPage", method = RequestMethod.GET)
	public String getLoginPage(@ModelAttribute("user") User user,ModelMap map) {
		/*if(user.getUserId()!=0)
		{
			map.addAttribute("invalid","Invalid username or password");
		}*/
		System.out.println(user);
		return "login";
	}
	
	@RequestMapping(value = "/getLoginPage", method = RequestMethod.POST)
    public String getSuccess2(@Valid @ModelAttribute("user") User user, BindingResult result,ModelMap map) {
        //userService.userValidation(user);
		//System.out.println(user);
            if (result.hasErrors() || !userService.userValidation(user)) {
            	map.addAttribute("invalid","Invalid username or password");
                    return "login";
            } else {
                    return "success";
            }
    }
	
	@ModelAttribute("genderList")
	public List<String> listGender() {
	List<String> list = new ArrayList<String>();
	list.add("Male");
	list.add("Female");
	list.add("Other");
	return list;
	}
}