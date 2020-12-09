package com.cognizant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.model.Agent;
import com.cognizant.model.User;
import com.cognizant.service.AgentService;
import com.cognizant.service.UserService;

/**
 * 
 * @author SA
 *
 */
@Controller
public class AgentController {

	@Autowired
	private AgentService agentService;
	@Autowired
	UserService userService;

	@RequestMapping(value = "/getAgentPage", method = RequestMethod.GET)
	public String getNotificationPage(@ModelAttribute("agent") Agent agent) {
		return "agent";
	}

	@RequestMapping(value = "/getAgentPage", method = RequestMethod.POST)
	public String getCustNotiSuccess(@ModelAttribute("agent") Agent agent, BindingResult result, ModelMap map) {
		agentService.saveAgent(agent);
		return "agentSuccess";
	}

	@GetMapping(value = "/getAgentDetails")
	public String getAgentPage(@ModelAttribute("user") User user, ModelMap map) {

		map.addAttribute("user", userService.getAll());

		return "agentDetails";
	}

	@GetMapping(value = "/getAgentView")
	public String getUserEdit(@RequestParam int userId, @ModelAttribute("user") User user, ModelMap map) {

		map.addAttribute("item", userService.findUser(userId));
		return "agentView";
	}

	@GetMapping(value = "/getAgentDelete")
	public String showUserDelete(@RequestParam int userId, @ModelAttribute("user") User user, ModelMap map) {
		User user1 = userService.findUser(userId);
		userService.deleteUser(user1);

		return "agentDelete";
	}
}
