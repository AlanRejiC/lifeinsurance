package com.cognizant.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.model.Policy;
import com.cognizant.repository.PolicyRepo;

/**
 * 
 * @author Priyanka Nath
 *
 */
@Service
public class PolicyService {

	@Autowired
	PolicyRepo policyRepo;

	public Policy findPolicyName(String policyName) {
		return policyRepo.getOne(policyName);
	}

	public List<Policy> getAll() {
		return policyRepo.findAll();

	}

	public void savePolicy(Policy policy) {
		policyRepo.save(policy);
	}

	public boolean policyNameValiadtion(Policy policy) {
		boolean isValid = false;
		Policy temp = findPolicyName(policy.getPolicyName());
		if (temp == null)
			return false;

		if (temp.getPolicyName() == policy.getPolicyName())
			isValid = true;

		return isValid;

	}

	public void getPolicyDetails(Policy policy) {
		policy.getPolicyNumber();
		policy.getPolicyName();
		policy.getPolicyDescription();
		policy.getInterestRate();
		policy.getNetAmountPerYear();
		policy.getPolicyTerm();
		policy.getTotDeductible();
		policy.getTotCoInsurance();
	}

}
