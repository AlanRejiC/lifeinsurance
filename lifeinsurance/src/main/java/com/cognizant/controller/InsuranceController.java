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
public class InsuranceController {

	@Autowired
	private InsuranceService insuranceService;

	@Autowired
	private ClaimService claimService;
	
	@Autowired
	private PaymentService paymentService;

	@Autowired
	private InsuranceValidator insuranceValidator;

	@Autowired
	private PaymentValidator paymentValidator;

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
		map.addAttribute("totExcludedAmt",policy.getNetAmountPerYear()*policy.getPolicyTerm()-claim.getTotalCharge());
		map.addAttribute("totExcludedAmt",claim.getTotalCharge()-policy.getNetAmountPerYear()*policy.getPolicyTerm());
		map.addAttribute("totBenefit",policy.getNetAmountPerYear()*policy.getPolicyTerm());
		map.addAttribute("Status", "Requested");
		map.addAttribute("success", "Insurance Claim was successfull");
		return "claim";
	}
	
	
	
	
	
	
	@ModelAttribute("claimStatus")
	public List<String> claimStatus() {
		List<String> list = new ArrayList<String>();
		list.add("Requested");
		list.add("Approved");
		list.add("Rejected");
		return list;
	}

	@ModelAttribute("genderList")
	public List<String> listGender() {
		List<String> list = new ArrayList<String>();
		list.add("Male");
		list.add("Female");
		list.add("Other");
		return list;
	}

	@RequestMapping(value = "/getPaymentPage", method = RequestMethod.GET)
	public String getPayment(@ModelAttribute("payment") Payment payment) {
		System.out.println("\n\n\n\n\nInside Get Payment\n\n\n\n\n\n");
		return "payment";
	}

	@RequestMapping(value = "/getPaymentPage", method = RequestMethod.POST)
	public String getSuccessPayment(@Valid @ModelAttribute("payment") Payment payment, BindingResult result,
			ModelMap map) {
		try
		{
		System.out.println("\n\n\n\n\nInside Post Payment\n\n\n\n\n\n");
		paymentValidator.validate(payment, result);
		}
		catch(Exception e)
		{
			return "invalid";
		}
		if (result.hasErrors()) {
			System.out.println("Errors");
			System.out.println(result.getAllErrors());
			return "payment";
		} else {
			double balance = paymentService.calculateBalance(payment);
			map.addAttribute("balance", balance);
			payment.setAvailableBalance((float)balance);
			paymentService.saveCard(payment);
			return "Upload";
		}

	}

	@ModelAttribute("cardList")
	public List<String> listCardType() {
		List<String> list = new ArrayList<String>();
		list.add("Credit Card");
		list.add("Debit Card");
		return list;
	}

	@RequestMapping(value = "/getInsurancePage", method = RequestMethod.GET)
	public String getInsurancePage(@ModelAttribute("insurance") Insurance insurance) {
		System.out.println("\n\n\n\n\nInside Get Insurance\n\n\n\n\n\n");
		return "form";
	}

	@RequestMapping(value = "/getInsurancePage", method = RequestMethod.POST)
	public String getPaymentPage(@Valid @ModelAttribute("insurance") Insurance insurance, BindingResult result,
			ModelMap map) {
		System.out.println("\n\n\n\n\nInside Post Insurance\n\n\n\n\n\n");
		insuranceValidator.validate(insurance, result);
		if (result.hasErrors()) {
			System.out.println("\n\n\n\n\nInside Post Insurance has errors\n\n\n\n\n\n");
			System.out.println(result.getAllErrors());
			return "form";
		} else {
			insuranceService.saveInsurance(insurance);
			return "linkpayment";
		}
	}

	@ModelAttribute("relationshipList")
	public List<String> listRelationship() {
		List<String> list = new ArrayList<String>();
		list.add("Married");
		list.add("UnMarried");
		return list;
	}
}