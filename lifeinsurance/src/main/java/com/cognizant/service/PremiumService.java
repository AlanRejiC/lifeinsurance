package com.cognizant.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.model.Policy;
import com.cognizant.repository.PolicyRepo;

@Service
public class PremiumService {

	@Autowired
	PolicyRepo policyRepo;

	public Policy findPolicyName(String policyName) {
		return policyRepo.getOne(policyName);
	}

	public float getInterestRate(String policyName) {
		Policy policy = policyRepo.getOne(policyName);
		return policy.getInterestRate();
	}

	public int getTerm(String policyName) {
		Policy policy = policyRepo.getOne(policyName);
		return policy.getPolicyTerm();
	}
	public float getAmount(String policyName) {
		Policy policy = policyRepo.getOne(policyName);
		return policy.getNetAmountPerYear();
	}

}
