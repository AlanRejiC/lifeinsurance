package com.cognizant.controller;

import java.time.LocalDate;
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
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.model.Claim;
import com.cognizant.model.Home;
import com.cognizant.model.Policy;
import com.cognizant.model.Insurance;
import com.cognizant.model.Payment;
import com.cognizant.service.ClaimService;
import com.cognizant.service.InsuranceService;
import com.cognizant.service.PaymentService;
import com.cognizant.service.UserService;
import com.cognizant.validate.InsuranceValidator;
import com.cognizant.validate.PaymentValidator;

@Controller
@ComponentScan("com.service")

public class ClaimController {

	@Autowired
	private ClaimService claimService;
	
	@Autowired
	private UserService userService;

	@GetMapping(value = "/getClaimPage")
	public String getClaimPage(@ModelAttribute("claim") Claim claim, ModelMap map) {
		if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
		System.out.println("/n/n/n/n/nInside get page/n/n/n/n");
		return "claim";
	}
	
	@PostMapping(value = "/getClaimPage")
	public String postClaimPage(@ModelAttribute("claim") Claim claim, ModelMap map) {
		if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
		System.out.println("/n/n/n/n/nInside post page/n/n/n/n");
		Insurance insurance = claimService.findUser(claim.getCustName());

		Policy policy = claimService.findTotDeductible(insurance.getPolicyName());
		map.addAttribute("totDeductible", policy.getTotDeductible());
		map.addAttribute("totCoInsurance", policy.getTotCoInsurance());
		map.addAttribute("Totaldeductiblepaid","Total deductible paid");
		map.addAttribute("Totalcoinsuranceamount","Total co-insurance amount");
		map.addAttribute("Totalexcludedamount","Total excluded amount");
		map.addAttribute("Totalexceededamount","Total exceeded amount");
		map.addAttribute("Totalbenefitpaid","Total benefit paid");
		
		
		
		if (policy.getNetAmountPerYear() * policy.getPolicyTerm() - claim.getTotalCharge() >= 0) {
			map.addAttribute("totExcludedAmt",
					(policy.getNetAmountPerYear() * policy.getPolicyTerm()) - claim.getTotalCharge());
			map.addAttribute("totExceededAmt", 0);
		} else {
			map.addAttribute("totExceededAmt",
					claim.getTotalCharge() - (policy.getNetAmountPerYear() * policy.getPolicyTerm()));
			map.addAttribute("totExcludedAmt", 0);
		}
		map.addAttribute("totBenefit", policy.getNetAmountPerYear() * policy.getPolicyTerm());
		map.addAttribute("Status", "Requested");
		map.addAttribute("success", "Insurance Claim was successfull");
		claim.setStatuUpdatedDate(LocalDate.now());
		claim.setStatus("requested");
		claimService.saveClaim(claim);
		return "claim";
	}

	
	
	
	@GetMapping(value = "/getClaimEdit")
	public String getEditClaimPage(	@RequestParam int claimNumber,@ModelAttribute("claim") Claim claim, ModelMap map) {
		if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
		map.addAttribute("item", claimService.findCust(claimNumber));
		return "claimedit";
	}

	@PostMapping(value = "/getClaimEdit")
	public String reSubmitClaimPage(@ModelAttribute("claim") Claim claim, ModelMap map) {
		if(Home.Id==0 || userService.findUser(Home.Id).getLogin()==false)
		{
			return "pleaseLogin";
		}
		Insurance insurance = claimService.findUser(claim.getCustName());

		/*
		 * map.addAttribute("oldClaimNumber", claim.getClaimNumber());
		 * map.addAttribute("customerName", claim.getCustName());
		 * map.addAttribute("incurredDate", claim.getIncurredDate());
		 * map.addAttribute("reportedDate", claim.getReportedDate());
		 * map.addAttribute("dateOfClaimPaid", claim.getDatePaid());
		 * map.addAttribute("dateOfAdmission", claim.getAdmitDate());
		 * map.addAttribute("dateOfDischarge", claim.getReleaseDate());
		 * map.addAttribute("totalCharges", claim.getTotalCharge());
		 * map.addAttribute("preCharges", claim.getPreCharge());
		 * map.addAttribute("postCharges", claim.getPostCharge());
		 */
		Claim editClaim=claimService.findCust(claim.getClaimNumber());
		map.addAttribute("item",editClaim);

		Policy policy = claimService.findTotDeductible(insurance.getPolicyName());
		map.addAttribute("totDeductible", policy.getTotDeductible());
		map.addAttribute("totCoInsurance", policy.getTotCoInsurance());
		map.addAttribute("Totaldeductiblepaid","Total deductible paid");
		map.addAttribute("Totalcoinsuranceamount","Total co-insurance amount");
		map.addAttribute("Totalexcludedamount","Total excluded amount");
		map.addAttribute("Totalexceededamount","Total exceeded amount");
		map.addAttribute("Totalbenefitpaid","Total benefit paid");
		if (policy.getNetAmountPerYear() * policy.getPolicyTerm() - claim.getTotalCharge() >= 0) {
			map.addAttribute("totExcludedAmt",
					(policy.getNetAmountPerYear() * policy.getPolicyTerm()) - claim.getTotalCharge());
			map.addAttribute("totExceededAmt", 0);
		} else {
			map.addAttribute("totExceededAmt",
					claim.getTotalCharge() - (policy.getNetAmountPerYear() * policy.getPolicyTerm()));
			map.addAttribute("totExcludedAmt", 0);
		}
		map.addAttribute("totBenefit", policy.getNetAmountPerYear() * policy.getPolicyTerm());

		map.addAttribute("success", "Insurance Claim was successfull");
		claim.setStatus("requested");
		claim.setStatuUpdatedDate(LocalDate.now());
		claimService.saveClaim(claim);
		return "claimedit";
	}

}
