package com.cognizant.controller;

import java.time.LocalDateTime;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.model.Help;
import com.cognizant.model.Home;
import com.cognizant.model.Questionnaire;
import com.cognizant.model.User;
import com.cognizant.service.HelpService;
import com.cognizant.service.QuestionnaireService;
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
    
    @Autowired
	 private QuestionnaireService questionnaireService;

    @RequestMapping(value = "/getAdminLoginPage", method = RequestMethod.GET)
    public String getAdminLoginPage(@ModelAttribute("user") User user) {
        return "adminLogin";
    }

    @RequestMapping(value = "/getAdminLoginPage", method = RequestMethod.POST)
    public String getAdminLoginSuccess(@Valid @ModelAttribute("user") User user, BindingResult result, ModelMap map) {
        try {
    	if (result.hasErrors() || !userService.userValidation(user)) {
            map.addAttribute("invalid", "Invalid admin ID or password");
            return "adminLogin";
        } else if (!userService.adminValidation(user)) {
            map.addAttribute("invalidRole","Invalid Role access");
            return "adminLogin";
        } else {
        	user = userService.findUser(user.getUserId());
			System.out.println(user);
			user.setLogin(true);
			userService.saveUser(user);
        	Home.Id = user.getUserId();
            return "adminDashboard";
        }
        }
        catch(Exception e)
        {
        	map.addAttribute("invalid", "Invalid admin ID or password");
            return "adminLogin";
        }
      }
    @RequestMapping(value = "/getDashBoard", method = RequestMethod.GET)
    public String getAdminDashboard() {
		if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
        return "adminDashboard";
    }
    
    @RequestMapping(value="/getHelpRequest", method = RequestMethod.GET)
    public String getResolutionPage(@ModelAttribute("help") Help help, BindingResult result, ModelMap map){
        
        map.addAttribute("help", helpService.getAll());
        return "resolveHelpRequest";     
    }
    
    @RequestMapping(value="/getEditHelpRequest", method = RequestMethod.GET)
    public String getEditResolutionPage(@ModelAttribute("help") Help help, BindingResult result, ModelMap map) {
		if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
    		Help help1=helpService.findHelpbyRequestID(help);
            map.addAttribute("item", help1);
            help.setCustName(help1.getCustName());
            System.out.println("get Edit resolve");
            System.out.println(help1);
            help=help1;
            //helpService.saveHelpIssue(help1);
        return "editResolveHelpRequest"; 
    }
    
    @RequestMapping(value="/resolveSuccess",method = RequestMethod.GET)
    public String getUserSuccess(@ModelAttribute("help") Help help, BindingResult result, ModelMap map) {
		if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
    	System.out.println(help+" ///// from the model attribute");
    	Help help1=helpService.findHelpbyRequestID(help);
    	System.out.println(help1+" ///// from the the database");
        help1.setResolutionByAdmin(help.getResolutionByAdmin());
        System.out.println(help1+" ///// setting the resolved by admin of object from db with model attribute value");
        //System.out.println(help1);
       
        helpService.saveHelpIssue(help1);
        System.out.println("saving");
    	
        return "success";
    }
    
    @RequestMapping(value="/setQuestion",method = RequestMethod.GET)
    public String setQuestion(@ModelAttribute("questionnaire") Questionnaire questionnaire,ModelMap map)
    {
		if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
    	return "QuestionSet";
    }
    
    @RequestMapping(value="/setQuestion",method = RequestMethod.POST)
    public String setQuestionPOST(@ModelAttribute("questionnaire") Questionnaire questionnaire,ModelMap map)
    {
		if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
    	try {
    	System.out.println(questionnaire);
    	questionnaire.setId(1);
    	String str=LocalDateTime.now()+"";
    	String str1[]=str.split("-|:|T");
        str=str1[1]+str1[2]+str1[3]+str1[4]+str1[5].charAt(0)+str1[5].charAt(1);
        System.out.println(str);
        //Questionnaire questionnaire1=questionnaireService.findQuestionnaire(0);
       // System.out.println(questionnaire1);
       // questionnaireService.deleteResponse(questionnaire1);
    	questionnaire.setResponse1("admin");
    	questionnaire.setResponse2("admin");
    	questionnaire.setResponse3("admin");
    	questionnaire.setFeedback("admin");
    	questionnaire.setUserId(10000);
    	//questionnaire1.setId(2);
    	questionnaire.setId(7777777);
    	//questionnaireService.deleteResponse(questionnaire);
    	
    	System.out.println(questionnaire);
    	System.out.println(questionnaire);
    	questionnaireService.saveResponse(questionnaire);
    	}
    	catch(Exception e)
    	{
    		map.addAttribute("status", "Questions have been set");
        	return "QuestionSet";
    	}
    	
    	
    	map.addAttribute("status", "Questions have been set");
    	return "QuestionSet";
    }
}