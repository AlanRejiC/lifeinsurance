package com.cognizant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.model.Claim;
import com.cognizant.model.Insurance;
import com.cognizant.model.Policy;
import com.cognizant.model.User;
import com.cognizant.service.ClaimService;
import com.cognizant.service.InsuranceService;
import com.cognizant.service.UserService;
@Controller
public class UserController {
	@Autowired
	UserService userService;
	
	@Autowired
	ClaimService claimService;
	
	@GetMapping(value = "/getUserPage")
	public String getUserPage(@ModelAttribute("user") User user, ModelMap map) {
		System.out.println("inside get user page");
		map.addAttribute("user",userService.getAll());
		return "usersPage";
	}
//	
	@GetMapping(value = "/userEdit")
	public String getUserEdit(@RequestParam int userId,@ModelAttribute("user") User user,ModelMap map) {
		System.out.println("inside get user  EDIT page");
		map.addAttribute("item",userService.findUser(userId));
		return "userEdit";
	}
	
	@GetMapping(value = "/userSuccess")
	public String getUserSuccess(@RequestParam int userId,ModelMap map) {
		System.out.println("inside success page");
		//map.addAttribute("success",success);
		User user1=userService.findUser(userId);
		userService.saveUser(user1);
		return "userSuccess";
	}
	@GetMapping(value = "/userUpdate")
	public String showPolicySave(@RequestParam int userId,@ModelAttribute("user") User user, ModelMap map) {
		User user1=userService.findUser(userId);
		Claim claim=claimService.findUser(user1.getFirstName());
		map.addAttribute("status", claim.getStatus());
		map.addAttribute("userId", user1.getUserId());
		return "userUpdate";
	}
	@GetMapping(value = "/userDelete")
	public String showUserDelete(@RequestParam int userId,@ModelAttribute("user") User user, ModelMap map) {
		User user1 = userService.findUser(userId);
		userService.deleteUser(user1);
		System.out.println("inside get user delete page");
		return "userDelete" ;
		}
	
}