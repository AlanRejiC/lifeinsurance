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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.model.Policy;
import com.cognizant.service.PolicyService;

@Controller
@ComponentScan("com.service")
public class PolicyController {

	@Autowired
	PolicyService policyService;

	@GetMapping(value = "/getPolicyPage")
	public String getPolicyPage(@ModelAttribute("policy") Policy policy, ModelMap map) {
		map.addAttribute("policyList", policyService.getAll());
		return "policy";
	}
	
	
	// edit
	@GetMapping(value = "/getPolicyEdit")
	public String showPolicyEdit(@RequestParam String policyName, @ModelAttribute("policy") Policy policy,
			ModelMap map) {

		Policy policy1 = policyService.findPolicyName(policyName);
		map.addAttribute("item", policy1);
		// map.addAttribute("policyNumber",policyNumber);
		return "policyEdit";

	}

	// save
	@GetMapping(value = "/getPolicySave")
	public String showPolicySave(@ModelAttribute("policy") Policy policy, ModelMap map) {
		map.addAttribute("success", "Policy Edit was successfull");
		policyService.savePolicy(policy);
		return "policySave";
	}

	// delete
	@GetMapping(value = "/getPolicyDelete")
	public String showPolicyDelete(@RequestParam String policyName, @ModelAttribute("policy") Policy policy,
			ModelMap map) {
		System.out.println(policy);
		System.out.println("hee");
		try {
			Policy policy1 = policyService.findPolicyName(policyName);
			policyService.deletePolicy(policy1);
			return "policyDelete";
		} catch (Exception e) {
			return "invalidDelete";
		}
		/*
		 * @SuppressWarnings("unused") List<Policy> pList = new ArrayList<>();
		 * pList=policyService.getAll(); map.addAttribute(policy);
		 */

	}
	
	//add
	@RequestMapping(value = "/getPolicyAdd", method = RequestMethod.GET)
	public String getInsurancePage(@ModelAttribute("policy") Policy policy) {
		System.out.println("\n\n\n\n\nInside Get Insurance\n\n\n\n\n\n");
		return "policyAdd";
	}
	
	@RequestMapping(value = "/getPolicyAdd", method = RequestMethod.POST)
	public String getPaymentPage(@Valid @ModelAttribute("policy") Policy policy, BindingResult result,	ModelMap map) {
		System.out.println("----------Post Policy add------------");
		if (result.hasErrors()) {
			System.out.println("---------------Post Policy add has errors-----------");
			System.out.println(result.getAllErrors());
			return "policyAdd";
		}
		else {
			policyService.savePolicy(policy);
			return "success";
		}
	}

		
	@ModelAttribute("policyList")
	public List<String> listPolicy() {
		List<String> list = new ArrayList<String>();
		list.add("Child Policy");
		list.add("Term Insurance Policy");
		list.add("Endowment Policy");
		list.add("Unit Linked Insurance Policy");
		list.add("Money Back Policy");
		list.add("Death Policy");
		return list;
	}

}
