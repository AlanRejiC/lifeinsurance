package com.cognizant.controller;

import java.util.ArrayList;
import java.util.List;

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
//		String role=request.getParameter("item");;
		System.out.println("inside get user page");
		map.addAttribute("user",userService.getAll());
//		map.addAttribute("id", role);
		System.out.println("role");
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
	public String getUserSuccess(@RequestParam int userId,@ModelAttribute("user") User user,ModelMap map) {
		System.out.println("inside success page");
		//map.addAttribute("success",success);
//		User user1=userService.findUser(userId);
		userService.saveUser(user);
		return "userSuccess";
	}
	@GetMapping(value = "/userUpdate")
	public String showUserUpdate(@RequestParam int userId,@ModelAttribute("claim") Claim claim, ModelMap map) {
		User user=userService.findUser(userId);
		System.out.println(user);
		Claim claim1=claimService.findCustName(user.getFirstName());
		map.addAttribute("status",claim1.getStatus());
		map.addAttribute("userId", user.getUserId());
		System.out.println(claim1.getStatus());
		System.out.println("inside update page");
		return "userUpdate";
	}
	@GetMapping(value = "/userDelete")
	public String showUserDelete(@RequestParam int userId,@ModelAttribute("user") User user, ModelMap map) {
		User user1 = userService.findUser(userId);
		userService.deleteUser(user1);
		System.out.println("inside get user delete page");
		return "userDelete" ;
		}
	@ModelAttribute("roleList")
	public List<String> listRole() {
		List<String> list = new ArrayList<String>();
		list.add("Customer");
		list.add("Agent");
		list.add("Admin");
		return list;
	}
}
