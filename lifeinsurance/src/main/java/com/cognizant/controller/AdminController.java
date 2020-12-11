package com.cognizant.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.model.Help;
import com.cognizant.model.User;
import com.cognizant.service.HelpService;
import com.cognizant.service.UserService;

/**
 * 
 * @author SA
 *
 */
@Controller
public class AdminController {

    @Autowired
    private UserService userService;
    
    @Autowired
    private HelpService helpService;

    @RequestMapping(value = "/getAdminLoginPage", method = RequestMethod.GET)
    public String getAdminLoginPage(@ModelAttribute("user") User user) {
        return "adminLogin";
    }

    @RequestMapping(value = "/getAdminLoginPage", method = RequestMethod.POST)
    public String getAdminLoginSuccess(@Valid @ModelAttribute("user") User user, BindingResult result, ModelMap map) {
        if (result.hasErrors() || !userService.userValidation(user)) {
            map.addAttribute("invalid", "Invalid admin ID or password");
            return "adminLogin";
        } else if (!userService.adminValidation(user)) {
            map.addAttribute("invalidRole","Invalid Role access");
            return "adminLogin";
        } else {
            return "adminDashboard";
        }
    }
    @RequestMapping(value = "/getDashBoard", method = RequestMethod.GET)
    public String getAdminDashboard() {
        return "adminDashboard";
    }
    
    @RequestMapping(value="/getHelpRequest", method = RequestMethod.GET)
    public String getResolutionPage(@ModelAttribute("help") Help help, BindingResult result, ModelMap map){
        
        map.addAttribute("help", helpService.getAll());
        return "resolveHelpRequest";     
    }
    
    @RequestMapping(value="/getEditHelpRequest", method = RequestMethod.GET)
    public String getEditResolutionPage(@ModelAttribute("help") Help help, BindingResult result, ModelMap map) {
            Help help1=helpService.findHelpbyRequestID(help);
            map.addAttribute("item", help1);

        return "editResolveHelpRequest"; 
    }
}
