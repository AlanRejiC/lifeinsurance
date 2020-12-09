package com.cognizant.controller;

import java.util.ArrayList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.cognizant.model.Policy;
import com.cognizant.service.PremiumService;
/**
 * 
 * @author Priyanka Nath
 *
 */

@Controller
@ComponentScan("com.service")
public class PolicyPremiumController {

	@Autowired
	PremiumService premiumService;

	@GetMapping(value = "/getPolicyPremium")
	public String getPolicyPage(@ModelAttribute("policy") Policy policy, ModelMap map) {
		System.out.println("------------Inside get page-------------");
		return "policyPremium";
	}

	@PostMapping(value = "/getPolicyPremium")
	public String postPolicyPage(@ModelAttribute("policy") Policy policy, ModelMap map) {
		System.out.println("----------Inside post page-------------");
		Policy policy1 = premiumService.findPolicyName(policy.getPolicyName());
		map.addAttribute("item", premiumService.getInterestRate(policy1.getPolicyName()));
		map.addAttribute("term", premiumService.getTerm(policy1.getPolicyName()));
		map.addAttribute("item1",premiumService.getAmount(policy1.getPolicyName()));
		map.addAttribute("amountPerMonth", premiumService.getInterestRate(policy1.getPolicyName())*policy1.getNetAmountPerYear()/1000);
		map.addAttribute("netAmount", premiumService.getInterestRate(policy1.getPolicyName())*policy1.getNetAmountPerYear()/1000 * policy1.getPolicyTerm() + policy1.getNetAmountPerYear());
		return "policyPremium";
	}
	

	@ModelAttribute("policyList")
	public List<String> listPolicy() {
		List<String> list = new ArrayList<String>();
		list.add("----Policy Name-----");
		list.add("Term Insurance Policy");
		list.add("Child Policy");
		list.add("Endowment Policy");
		list.add("Money Back Policy");
		list.add("Unit Linked Insurance Policy");
		list.add("Death Policy");
		return list;

	}
}

	/*@ModelAttribute("annualIncome")
	public List<String> listIncome() {
		List<String> list = new ArrayList<String>();
		list.add("Upto 4lakhs");
		list.add("4lakhs-5lakhs");
		list.add("5lakhs-10lakhs");
		list.add("10lakhs-15lakhs");
		list.add("Over 15lakhs");
		return list;*/




