package com.cognizant.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.time.LocalDate;
import java.time.Period;

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

    public Insurance findUser(String custName) {
        return insuranceRepo.getOne(custName);
    }

    public Policy findTotDeductible(String policyName) {
        return policyRepo.getOne(policyName);
    }

    public void saveClaim(Claim claim) {
        claimRepo.save(claim);
    }

    public String claimStatus(int claimNo) {
        Claim claim=claimRepo.getOne(claimNo);
        String status=claim.getStatus();
        LocalDate now=LocalDate.now();
        LocalDate date=claim.getReportedDate();
        Period diff= Period.between(now, date);
        if(diff.getDays()<=7) {
            return status;
        }
        return null;
    }
    
   /** public Claim findClaim(String custName) {
        return claimRepo.getOne(custName);
        return null;      
    }*/
}
