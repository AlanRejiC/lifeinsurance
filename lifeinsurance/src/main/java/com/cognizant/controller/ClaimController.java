package com.cognizant.controller;


import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cognizant.model.Claim;
import com.cognizant.model.Policy;
import com.cognizant.model.Insurance;
import com.cognizant.model.Payment;
import com.cognizant.service.ClaimService;
import com.cognizant.service.InsuranceService;
import com.cognizant.service.PaymentService;
import com.cognizant.validate.InsuranceValidator;
import com.cognizant.validate.PaymentValidator;

@Controller
@ComponentScan("com.service")

public class ClaimController {
	
	@Autowired
	private ClaimService claimService;
	
	@GetMapping(value = "/getClaimPage")
	public String getClaimPage(@ModelAttribute("claim") Claim claim, ModelMap map) {
		System.out.println("/n/n/n/n/nInside get page/n/n/n/n");
		return "claim";
	}

	@PostMapping(value = "/getClaimPage")
	public String postClaimPage(@ModelAttribute("claim") Claim claim, ModelMap map) {
		System.out.println("/n/n/n/n/nInside post page/n/n/n/n");
		Insurance insurance=claimService.findUser(claim.getCustName());
		
		Policy policy=claimService.findTotDeductible(insurance.getPolicyName());
		map.addAttribute("totDeductible", policy.getTotDeductible());
		map.addAttribute("totCoInsurance", policy.getTotCoInsurance());
		if(policy.getNetAmountPerYear()*policy.getPolicyTerm()-claim.getTotalCharge()>=0)
		{
		map.addAttribute("totExcludedAmt",(policy.getNetAmountPerYear()*policy.getPolicyTerm())-claim.getTotalCharge());
		map.addAttribute("totExceededAmt",0);
		}
		else
		{
		map.addAttribute("totExceededAmt",claim.getTotalCharge()-(policy.getNetAmountPerYear()*policy.getPolicyTerm()));
		map.addAttribute("totExcludedAmt",0);
		}
		map.addAttribute("totBenefit",policy.getNetAmountPerYear()*policy.getPolicyTerm());
		map.addAttribute("Status", "Requested");
		map.addAttribute("success", "Insurance Claim was successfull");
		claim.setStatus("requested");
		claimService.saveClaim(claim);
		return "claim";
	}
	
	@PostMapping(value = "/getClaimEdit")
	public String reSubmitClaimPage(@ModelAttribute("claim") Claim claim, ModelMap map) {
		
		Insurance insurance=claimService.findUser(claim.getCustName());
		
		map.addAttribute("oldClaimNumber", claim.getClaimNumber());
		map.addAttribute("customerName", claim.getCustName());
		map.addAttribute("incurredDate", claim.getIncurredDate());
		map.addAttribute("reportedDate", claim.getReportedDate());
		map.addAttribute("dateOfClaimPaid", claim.getDatePaid());
		map.addAttribute("dateOfAdmission", claim.getAdmitDate());
		map.addAttribute("dateOfDischarge", claim.getReleaseDate());
		map.addAttribute("totalCharges", claim.getTotalCharge());
		map.addAttribute("preCharges", claim.getPreCharge());
		map.addAttribute("postCharges", claim.getPostCharge());
		
		
		
		Policy policy=claimService.findTotDeductible(insurance.getPolicyName());
		map.addAttribute("totDeductible", policy.getTotDeductible());
		map.addAttribute("totCoInsurance", policy.getTotCoInsurance());
		if(policy.getNetAmountPerYear()*policy.getPolicyTerm()-claim.getTotalCharge()>=0)
		{
		map.addAttribute("totExcludedAmt",(policy.getNetAmountPerYear()*policy.getPolicyTerm())-claim.getTotalCharge());
		map.addAttribute("totExceededAmt",0);
		}
		else
		{
		map.addAttribute("totExceededAmt",claim.getTotalCharge()-(policy.getNetAmountPerYear()*policy.getPolicyTerm()));
		map.addAttribute("totExcludedAmt",0);
		}
		map.addAttribute("totBenefit",policy.getNetAmountPerYear()*policy.getPolicyTerm());
		
		map.addAttribute("success", "Insurance Claim was successfull");
		claim.setStatus("requested");
		claimService.saveClaim(claim);
		return "claim";
	}


}
