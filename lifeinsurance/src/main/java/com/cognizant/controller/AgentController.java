package com.cognizant.controller;

import java.time.LocalDate;
import java.util.ArrayList;
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
import com.cognizant.model.Home;
import com.cognizant.model.Search;
import com.cognizant.model.User;
import com.cognizant.service.AgentService;
import com.cognizant.service.UserService;
import com.cognizant.validate.AgentValidator;
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
	private AgentValidator agentValidator;

	@RequestMapping(value = "/getAgentPage", method = RequestMethod.GET)
	public String getNotificationPage(@ModelAttribute("user") User user) {
		return "agent";
	}

	@RequestMapping(value = "/getAgentPage", method = RequestMethod.POST)
	public String getCustNotiSuccess(@ModelAttribute("user") User user, BindingResult result, ModelMap map) {
		try {
		agentValidator.validate(user, result);
		if(result.hasErrors())
		{
			return "agent";
		}
		user.setRole("agent"); // Setting the role to customer
		user.setDob(LocalDate.now());
		user.setLastName(" ");
		user.setGender(" ");
		//user.setAns1(" "); // These functionalities are a part of a later User Story
		//user.setAns2(" ");
		//user.setAns3(" ");
		//user.setSecurity1(" ");
		//user.setSecurity2(" ");
		//user.setSecurity3(" ");
		user.setLogin(false);
		System.out.println(user);
		userService.saveUser(user);
		return "agentSuccess";
		}
		catch(Exception e)
		{
			
			map.addAttribute("reject", "User Name has already been chosen");
			return "agent";
		}
	}

	@GetMapping(value = "/getAgentDetails")
	public String getAgentPage(@ModelAttribute("user") User user,@ModelAttribute("search") Search search, ModelMap map) {
		if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
		map.addAttribute("user", userService.findUserWithRole("agent"));

		return "agentDetails";
	}

	@PostMapping(value = "/getAgentDetails")
	public String getAgentView(@ModelAttribute("user") User user,@ModelAttribute("search") Search search, ModelMap map) {
		if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
		map.addAttribute("user", userService.findUserWithRole("agent"));

		return "agentDetails";
	}
	
	@PostMapping(value = "/getAgentDetail")
	public String getSearch(@ModelAttribute("search") Search search, ModelMap map) {
		if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
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
		if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
		map.addAttribute("item", userService.findUser(userId));
		return "agentView";
	}

	@GetMapping(value = "/getAgentDelete")
	public String showUserDelete(@RequestParam int userId, @ModelAttribute("user") User user,@ModelAttribute("search") Search search, ModelMap map) {
		if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
		User user1 = userService.findUser(userId);
		userService.deleteUser(user1);

		return "agentDelete";
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
