package com.cognizant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.cognizant.model.Agent;
import com.cognizant.service.AgentService;

/**
 * 
 * @author SA
 *
 */
@Controller
public class AgentController {

    @Autowired
    private AgentService agentService;
    
    @RequestMapping(value = "/getAgentPage", method = RequestMethod.GET)
    public String getNotificationPage(@ModelAttribute("agent") Agent agent) {
        return "agent";
    }
    
    @RequestMapping(value = "/getAgentPage", method = RequestMethod.POST)
    public String getCustNotiSuccess(@ModelAttribute("agent") Agent agent, BindingResult result, ModelMap map) {
        agentService.saveAgent(agent);
        return "agentSuccess";
    }
}
