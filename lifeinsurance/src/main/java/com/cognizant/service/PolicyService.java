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

	public Policy findPolicyNo(int policyNumber) {
		return policyRepo.getOne(policyNumber);
	}

	public List<Policy> getAll() {
		return policyRepo.findAll();

	}

	public void savePolicy(Policy policy) {
		policyRepo.save(policy);
	}

	public boolean policyNumberValiadtion(Policy policy) {
		boolean isValid = false;
		Policy temp = findPolicyNo(policy.getPolicyNumber());
		if (temp == null)
			return false;

		if (temp.getPolicyNumber() == policy.getPolicyNumber())
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
