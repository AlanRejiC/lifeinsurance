package com.cognizant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.model.Claim;
import com.cognizant.service.ClaimService;

/**
 * 
 * @author SA
 *
 */
@Controller
public class CustNotificationController {

    @Autowired
    private ClaimService claimService;

    @RequestMapping(value = "/getNotificationpage", method = RequestMethod.GET)
    public String getNotificationPage(@ModelAttribute("claim") Claim claim) {
        return "customerNotification";
    }

    @RequestMapping(value = "/getNotificationpage", method = RequestMethod.POST)
    public String getCustNotiSuccess(@RequestParam int claimNumber,@ModelAttribute("claim") Claim claim, BindingResult result, ModelMap map) {
    	
        claim = claimService.findCust(claim.getClaimNumber());
        System.out.println(claim.getClaimNumber());
        map.addAttribute("number", claim.getClaimNumber());
        boolean isvalid = claimService.claimStatus(claim.getClaimNumber());
        if (result.hasErrors()) {
            map.addAttribute("invalidclaim", "Invalid claim Number");
        }
        System.out.println(isvalid);
        if (!isvalid) {
            map.addAttribute("nullStatus", "No notification yet!!");
        } else {
            map.addAttribute("status", claim.getStatus());
        }
        return "customerNotification";
    }
}