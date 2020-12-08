package com.cognizant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.cognizant.model.Claim;
import com.cognizant.model.User;
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
    public String getNotificationPage(@ModelAttribute("user") User user) {
        return "customerNotification";
    }
    
    @RequestMapping(value = "/getNotificationpage", method = RequestMethod.POST)
    public String getCustNotiSuccess(@ModelAttribute("claim") Claim claim, BindingResult result, ModelMap map) {
        String status=claimService.claimStatus(claim.getClaimNumber());
        if (result.hasErrors()) {
            map.addAttribute("invalidclaim", "Invalid claim Number");
            return "customerNotification";
        } 
        if(status==null) {
            map.addAttribute("nullStatus","No notification yet!!");
        }
        map.addAttribute("status", claim.getStatus());
        return "customerNotification";
    }
}
