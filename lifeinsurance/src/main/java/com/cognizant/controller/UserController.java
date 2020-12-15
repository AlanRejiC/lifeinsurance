package com.cognizant.controller;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.model.Claim;
import com.cognizant.model.Help;
import com.cognizant.model.Home;
import com.cognizant.model.Insurance;
import com.cognizant.model.Policy;
import com.cognizant.model.Search;
import com.cognizant.model.User;
import com.cognizant.service.ClaimService;
import com.cognizant.service.HelpService;
import com.cognizant.service.InsuranceService;
import com.cognizant.service.UserService;

@Controller
public class UserController {
    @Autowired
    UserService userService;

    @Autowired
    ClaimService claimService;

    @Autowired
    HelpService helpService;

    @GetMapping(value = "/getUserPage")
    public String getUserPage(@RequestParam String role, @ModelAttribute("search") Search search, ModelMap map) {
//		String role=request.getParameter("item");;
		if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
    	try {
            System.out.println(role);
            System.out.println("inside get user page");
            if (role.equalsIgnoreCase("customer")) {
                map.addAttribute("user", userService.findUserWithRole("customer"));
                System.out.println(userService.findUserWithRole("customer"));
            }

            else if (role.equalsIgnoreCase("agent")) {
                map.addAttribute("user", userService.findUserWithRole("agent"));
            }

            else if (role.equalsIgnoreCase("admin")) {
                map.addAttribute("user", userService.findUserWithRole("admin"));
            } else {
                map.addAttribute("user", userService.getAll());

            }
            System.out.println(search.getName());
            return "usersPage";
        } catch (Exception e) {
            return "userUpdateSuccess";
        }
    }

    @PostMapping(value = "/getSearch")
    public String getSearch(@ModelAttribute("search") Search search, ModelMap map) {
//		String role=request.getParameter("item");;
		if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
    	try {
            System.out.println(search.getName());
            map.addAttribute("user", userService.findParticularUser(search.getName()));
            return "usersPage";
        } catch (Exception e) {
            return "userUpdateSuccess";
        }
    }

//	
    @GetMapping(value = "/userEdit")
    public String getUserEdit(@RequestParam int userId, @ModelAttribute("user") User user, ModelMap map) {
		if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
    	System.out.println("inside get user  EDIT page");
        User user1 = userService.findUser(userId);
        user1.setUserId(userId);
        map.addAttribute("item", user1);
        return "userEdit";
    }

    @GetMapping(value = "/userSuccess")
    public String getUserSuccess(@RequestParam int userId, @ModelAttribute("user") User user, ModelMap map) {
		if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
    	System.out.println("inside success page");
        // map.addAttribute("success",success);
//		User user1=userService.findUser(userId);
    	user.setLogin(true);
        userService.saveUser(user);
        map.addAttribute("status", "Your Edit has been Saved");
        return "userEdit";
    }

    @GetMapping(value = "/getPageSearch")
    public String showFilter(@RequestParam String role) {
		if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
    	return "usersPage";
    }

    @GetMapping(value = "/userUpdate")
    public String showUserUpdate(@RequestParam int userId, @ModelAttribute("claim") Claim claim, ModelMap map) {
		try
		{
    	if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
    	User user = userService.findUser(userId);
        System.out.println(user);
        Claim claim1 = claimService.findCustName(user.getFirstName());
        map.addAttribute("status", claim1.getStatus());
        map.addAttribute("userId", user.getUserId());
        System.out.println(claim1.getStatus());
        System.out.println("inside update page");
        return "userUpdate";
		}
		catch(Exception e)
		{
			map.addAttribute("noti", "This User has no claim");
			return "userUpdate";
		}
	}

    @GetMapping(value = "/getUserUpdateSuccess")
    public String getUserUpdateSuccess(@RequestParam int userId, @RequestParam String status,
            @ModelAttribute("claim") Claim claim) {
		if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
        User user = userService.findUser(userId);
        Claim claim1 = claimService.findCustName(user.getFirstName());
        claim1.setStatus(status);
        claimService.saveClaim(claim1);
        System.out.println(userId);
        System.out.println(claim);
        return "userSuccess";

    }

    @GetMapping(value = "/userDelete")
    public String showUserDelete(@RequestParam int userId, @ModelAttribute("user") User user, ModelMap map) {
		if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
    	User user1 = userService.findUser(userId);
        userService.deleteUser(user1);
        System.out.println("inside get user delete page");
        return "userDelete";
    }

    @GetMapping(value = "/getHelpPage")
    public String getHelpPage(@ModelAttribute("help") Help help) {
        return "help";
    }

    @PostMapping(value = "/getHelpPage")
    public String postHelpPage(@ModelAttribute("help") Help help, ModelMap map) {
    	try{System.out.println(help);
        Insurance insurance = helpService.findUserHelp(help.getCustName());
        map.addAttribute("custName", insurance.getCustName());
        System.out.println(LocalDate.now());
        System.out.println(LocalDateTime.now());
        String str=LocalDateTime.now()+"";
        String str1[]=str.split("-|:|T");
        str=str1[1]+str1[2]+str1[3]+str1[4]+str1[5].charAt(0)+str1[5].charAt(1);
        System.out.println(str);
        map.addAttribute("autopopDate", LocalDate.now());
        help.setRequestId(Integer.parseInt(str));
        //help.setCustName(str);
        help.setResolutionByAdmin(" ");
        help.setDateOfTicket(LocalDate.now());
        System.out.println(help);
        helpService.saveHelpIssue(help);
        map.addAttribute("success", "Issue submitted successfully...Thank you for bringing the issue to our attention");
    	}catch (Exception e) {
			// TODO: handle exception
    		map.addAttribute("invalid", "Please fill the details in the form ");
        	
		}
    	
    	return "help";
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