package com.cognizant.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.model.Insurance;
import com.cognizant.model.Payment;

import com.cognizant.model.Claim;
import com.cognizant.model.Home;
import com.cognizant.model.User;
import com.cognizant.service.PaymentService;
import com.cognizant.service.UserService;
import com.cognizant.validate.RegistrationValidator;

@Controller
@ComponentScan("com.service")
public class LoginController {

	@Autowired
	private UserService userService;

	@Autowired
	private RegistrationValidator registrationValidator;

	@Autowired
	private PaymentService paymentService;
	float balance = 0;
	Home home = null;
	@RequestMapping(value = "/getHomePage", method = RequestMethod.GET)
	public String homePage() {
		return "homepage";
	}

	@RequestMapping(value = "/getContactPage", method = RequestMethod.GET)
	public String contactPage() {
		return "contactUs";
	}

	@RequestMapping(value = "/forgotPassword", method = RequestMethod.GET)
	public String forgotPassword(@ModelAttribute("user") User user) {

		return "forgotMyPassword";
	}

	@RequestMapping(value = "/getSignUpPage", method = RequestMethod.GET)
	public String getSignUp(@ModelAttribute("user") User user) {

		return "userRegistration";
	}

	@RequestMapping(value = "/getSignUpPage", method = RequestMethod.POST)
	public String getSuccess1(@ModelAttribute("user") @Valid User user, BindingResult result) {
		registrationValidator.validate(user, result);

		// System.out.println("hello");
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors());

			// System.out.println("middle");
			return "userRegistration";
		}
		user.setRole("customer"); // Setting the role to customer
		user.setLogin(false);
		System.out.println(user);
		userService.saveUser(user);
		return "success";
	}

	@RequestMapping(value = "/getLoginPage", method = RequestMethod.GET)
	public String getLoginPage(@ModelAttribute("user") User user, ModelMap map) {
		/*
		 * if(user.getUserId()!=0) {
		 * map.addAttribute("invalid","Invalid username or password"); }
		 */
		System.out.println(user);
		return "login";
	}

	@RequestMapping(value = "/getLoginPage", method = RequestMethod.POST)
	public String getSuccess2(@Valid @ModelAttribute("user") User user, BindingResult result, ModelMap map) {
		// userService.userValidation(user);
		// System.out.println(user);
		try {
			if (result.hasErrors() || !userService.userValidation(user)) {
				map.addAttribute("invalid", "Invalid username or password");
				return "login";
			} else {
				user = userService.findUser(user.getUserId());
				System.out.println(user);
				user.setLogin(true);
				userService.saveUser(user);
				Home.Id = user.getUserId();
				return "success";
			}
		} catch (Exception e) {
			return "invalidlogin";
		}
	}

	@RequestMapping(value = "/getLogOut", method = RequestMethod.GET)
	public String LogOut() {
		User user = userService.findUser(Home.Id);
		user.setLogin(false);
		Home.Id = 0;
		return "logout";
	}

	@RequestMapping(value = "/forgotEnter", method = RequestMethod.GET)
	public String forgotUserIdEnterEmailorPassword(@ModelAttribute("user") User user, ModelMap map) {
		User user1 = null;
		try {
			if (user.getEmail() != "" && user.getEmail() != null) {
				System.out.println(user.getEmail());
				user1 = userService.findUserEmail(user.getEmail()).get(0);
				user = user1;
				System.out.println(1);
				map.addAttribute("Question1", user.getSecurity1());
				System.out.println(2);
				map.addAttribute("Question2", user.getSecurity2());
				map.addAttribute("Question3", user.getSecurity3());

				return "forgotId";

			} else if (user.getContact() != "" && user.getContact() != null) {
				user1 = userService.findUserNumber(user.getContact()).get(0);
				user = user1;
				map.addAttribute("Question1", user.getSecurity1());
				map.addAttribute("Question2", user.getSecurity2());
				map.addAttribute("Question3", user.getSecurity3());
				return "forgotId";
			}

		} catch (Exception e) {
			map.addAttribute("status", "You have entered the wrong Phone number or Email");
			System.out.println("Exception");
			return "forgotEnter";
		}
		// map.addAttribute("status", "You have entered the wrong Phone number or
		// Email");
		return "forgotEnter";
	}

	@RequestMapping(value = "/forgotUserId", method = RequestMethod.POST)
	public String forgotUserIdWithId(@ModelAttribute("user") User user, ModelMap map) {

		map.addAttribute("Question1", user.getSecurity1());
		map.addAttribute("Question2", user.getSecurity2());
		map.addAttribute("Question3", user.getSecurity3());
		System.out.println(user);
		User user1 = null;
		if (user.getEmail() != "") {
			user1 = userService.findUserEmail(user.getEmail()).get(0);
		} else if (user.getContact() != "") {
			user1 = userService.findUserNumber(user.getContact()).get(0);
		}
		if (user.getAns1().equalsIgnoreCase(user1.getAns1()) && user.getAns2().equalsIgnoreCase(user1.getAns2())
				&& user.getAns3().equalsIgnoreCase(user1.getAns3()))
			map.addAttribute("id", "Your User ID is :" + user1.getUserId());
		else
			map.addAttribute("id", "The Answers do not Match");

		return "forgotId";
	}
	@RequestMapping(value = "/changeMyPassword", method = RequestMethod.GET)
	public String getChangePassword() {
		System.out.println("changePassword get method");
		return "changeMyPassword";
	}
	@RequestMapping(value = "/changeMyPassword", method = RequestMethod.POST)
	public String postForgotPassword(@ModelAttribute("user") User user, ModelMap map) {
		User user1 = userService.findUser(Home.Id);
//		map.addAttribute("oldpassword", user.getPassword());
//		String oldPassword =requestParameter("old");
//		if(oldpassword==user1.getPassword()) {
//		 user1=null;
		user1.setUserId(Home.Id);
		user1.setPassword(user.getPassword());
		user1.setConfirmpassword(user.getConfirmpassword());
		userService.saveUser(user1);
		return "success";
//		}
//		else
//		return "forgotMyPassword";
	}

	@RequestMapping(value = "/verification", method = RequestMethod.GET)
	public String getChangePasswordVerification(@ModelAttribute("user") User user, ModelMap map) {
		System.out.println("changePasswordVerification get method");
		return "changePasswordVerification";
	}

	@RequestMapping(value = "/verification", method = RequestMethod.POST)
	public String changePasswordVerification(@ModelAttribute("user") User user, ModelMap map) {
		System.out.println("changePasswordVerification");
		User user1 = userService.findUser(user.getUserId());
		Home.Id = user1.getUserId();
			if (user.getUserId() != 0 && user.getPassword() != "" && user.getPassword() != null && user.getPassword().equals(user1.getPassword())) {
				
				System.out.println(user1.getPassword());
				System.out.println(user.getPassword());
				
					System.out.println("return changemypassword");
					return "changeMyPassword";
				}
			return "changePasswordVerification";
			}

			
//			map.addAttribute("status", "You have entered the wrong User Id or Password");
//			System.out.println("Exception");
			
//		
		// map.addAttribute("status", "You have entered the wrong Phone number or
		// Email");}
			
	

	@ModelAttribute("genderList")
	public List<String> listGender() {
		List<String> list = new ArrayList<String>();
		list.add("Male");
		list.add("Female");
		list.add("Other");
		return list;
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
