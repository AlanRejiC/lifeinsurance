package com.cognizant.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.model.Claim;
import com.cognizant.model.Insurance;
import com.cognizant.model.User;
import com.cognizant.model.Policy;
import com.cognizant.repository.ClaimRepo;
import com.cognizant.repository.PolicyRepo;
import com.cognizant.repository.InsuranceRepo;
@Service
public class ClaimService {
	
	@Autowired
	private ClaimRepo claimRepo;
	@Autowired
	private PolicyRepo policyRepo;

	@Autowired
	private InsuranceRepo insuranceRepo;
	
	public Insurance findUser(String custName)
	{
		return insuranceRepo.getOne(custName);
	}
	
	public Policy findTotDeductible(String policyName)
	{
		return policyRepo.getOne(policyName);
	}
	
	public void saveClaim(Claim claim)
	{
		claimRepo.save(claim);
	}
	
	
//	public float findTotDeductible(String custName) {
//		policyRepo.
//		return 0;
//		
//	}
	
}
