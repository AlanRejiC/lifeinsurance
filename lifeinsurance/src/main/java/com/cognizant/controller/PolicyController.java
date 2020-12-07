package com.cognizant.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
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
		map.addAttribute("policy",policyService.getAll());
		return "policy";
	}
	
	//edit
	@GetMapping(value="/getPolicyEdit")
	public String showPolicyEdit(@RequestParam String policyName,@ModelAttribute("policy") Policy policy, ModelMap map) {
				
		Policy policy1 = policyService.findPolicyName(policyName);
		map.addAttribute("item",policy1);
		//map.addAttribute("policyNumber",policyNumber);
		return "policyEdit";
		
	}
	
	//save
	@GetMapping(value = "/getPolicySave")
	public String showPolicySave(@ModelAttribute("policy") Policy policy, ModelMap map) {
		map.addAttribute("success", "Policy Edit was successfull");
		policyService.savePolicy(policy);
		return "policySave";
	}
	
	//delete
	@GetMapping(value = "/getPolicyDelete")
	public String showPolicyDelete(@ModelAttribute("policy") Policy policy, ModelMap map) {
		policyService.deletePolicy(policy);
		/*@SuppressWarnings("unused")
		List<Policy> pList = new ArrayList<>();
		pList=policyService.getAll();
		map.addAttribute(policy);*/
		return "policyDelete" ;
		
	}
	
	
	@ModelAttribute("policyList")
	public List<String> listPolicy() {
		List<String> list = new ArrayList<>();
		list.add("Child Policy");
		list.add("Term Insurance Policy");
		list.add("Endowment Policy");
		list.add("Unit Linked Insurance Policy");
		list.add("Money Back Policy");
		list.add("Whole Life Policy");
		return list;
	}

}