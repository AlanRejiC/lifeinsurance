package com.cognizant.controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.model.Agent;
import com.cognizant.model.Search;
import com.cognizant.model.User;
import com.cognizant.service.AgentService;
import com.cognizant.service.UserService;
import com.cognizant.validate.RegistrationValidator;

/**
 * 
 * @author SA
 *
 */
@Controller
public class AgentController {

	// @Autowired
	// private AgentService agentService;
	@Autowired
	UserService userService;

	@Autowired
	private RegistrationValidator registrationValidator;

	@RequestMapping(value = "/getAgentPage", method = RequestMethod.GET)
	public String getNotificationPage(@ModelAttribute("user") User user) {
		return "agent";
	}

	@RequestMapping(value = "/getAgentPage", method = RequestMethod.POST)
	public String getCustNotiSuccess(@ModelAttribute("user") User user, BindingResult result, ModelMap map) {
		registrationValidator.validate(user, result);
		user.setRole("agent"); // Setting the role to customer
		user.setDob(LocalDate.now());
		user.setLastName(" ");
		user.setGender(" ");
		user.setAns1(" "); // These functionalities are a part of a later User Story
		user.setAns2(" ");
		user.setAns3(" ");
		user.setSecurity1(" ");
		user.setSecurity2(" ");
		user.setSecurity3(" ");
		user.setLogin(false);
		System.out.println(user);
		userService.saveUser(user);
		return "agentSuccess";
	}

	@GetMapping(value = "/getAgentDetails")
	public String getAgentPage(@ModelAttribute("user") User user,@ModelAttribute("search") Search search, ModelMap map) {

		map.addAttribute("user", userService.findUserWithRole("agent"));

		return "agentDetails";
	}

	@PostMapping(value = "/getAgentDetails")
	public String getAgentView(@ModelAttribute("user") User user,@ModelAttribute("search") Search search, ModelMap map) {

		map.addAttribute("user", userService.findUserWithRole("agent"));

		return "agentDetails";
	}
	
	@PostMapping(value = "/getAgentDetail")
	public String getSearch(@ModelAttribute("search") Search search, ModelMap map) {
		String name = search.getName();
		char charArray[] = name.toCharArray();
		boolean bool = Character.isDigit(charArray[0]);
		if (bool) {
			System.out.println(search.getName());
			List<User> object = userService.findUserNumber(search.getName());
			System.out.println(object);
			// map.addAttribute("user", userService.findUserWithRole("agent"));
			map.addAttribute("user", userService.findUserNumber(search.getName()));

			return "agentDetails";

		} else {
			System.out.println(search.getName());
			map.addAttribute("user", userService.findParticularUser(search.getName()));

			return "agentDetails";
		}
		
	}

	@GetMapping(value = "/getAgentView")
	public String getUserEdit(@RequestParam int userId, @ModelAttribute("user") User user,@ModelAttribute("search") Search search, ModelMap map) {

		map.addAttribute("item", userService.findUser(userId));
		return "agentView";
	}

	@GetMapping(value = "/getAgentDelete")
	public String showUserDelete(@RequestParam int userId, @ModelAttribute("user") User user,@ModelAttribute("search") Search search, ModelMap map) {
		User user1 = userService.findUser(userId);
		userService.deleteUser(user1);

		return "agentDelete";
	}
}
