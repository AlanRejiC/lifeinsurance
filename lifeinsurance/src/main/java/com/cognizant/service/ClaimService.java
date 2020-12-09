package com.cognizant.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.time.LocalDate;
import java.time.Period;
import java.util.List;

import com.cognizant.model.Claim;
import com.cognizant.model.Insurance;
import com.cognizant.model.User;
import com.cognizant.model.Policy;
import com.cognizant.repository.ClaimRepo;
import com.cognizant.repository.ClaimRepo2;
import com.cognizant.repository.PolicyRepo;
import com.cognizant.repository.UserRepo;
import com.cognizant.repository.InsuranceRepo;

@Service
public class ClaimService {

    @Autowired
    private ClaimRepo claimRepo;
    @Autowired
    private ClaimRepo2 claimRepo2;

    @Autowired
    private PolicyRepo policyRepo;
    @Autowired
    private UserRepo userRepo;

    @Autowired
    private InsuranceRepo insuranceRepo;

    public Insurance findUser(String custName) {
        return insuranceRepo.getOne(custName);
    }

    public Claim findCustName(String firstName) {
        Claim claim = claimRepo.findClaim(firstName);
        return claim;
    }

    public Policy findTotDeductible(String policyName) {
        return policyRepo.getOne(policyName);
    }

    public void saveClaim(Claim claim) {
        claimRepo.save(claim);
    }

    public Claim findCust(int claimNum) {
        return claimRepo2.getOne(claimNum);
    }

    public boolean claimStatus(int claimNo) {
        Claim claim = claimRepo2.getOne(claimNo);
        LocalDate now = LocalDate.now();
        LocalDate date = claim.getStatuUpdatedDate();
        Period period = Period.between(now, date);
        int diffmonths = Math.abs(period.getMonths());
        int diffyears = Math.abs(period.getYears());
        int diff = Math.abs(period.getDays());
        if (diff <= 7 && diff >= 0 && diffyears == 0 && diffmonths == 0) {
            return true;
        }
        return false;
    }
}
