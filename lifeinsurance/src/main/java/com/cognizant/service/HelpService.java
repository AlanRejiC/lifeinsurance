package com.cognizant.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.model.Help;
import com.cognizant.model.Insurance;
import com.cognizant.model.User;
import com.cognizant.repository.HelpRepo;
import com.cognizant.repository.InsuranceRepo;

@Service
public class HelpService {
    
    @Autowired
    private HelpRepo helpRepo;
    
    @Autowired
    private InsuranceRepo insuranceRepo;

    public Insurance findUserHelp(String custName) {
        return insuranceRepo.getOne(custName);
    }
    
    public void saveHelpIssue(Help help) {
        helpRepo.save(help);
    }
    public List<Help> getAll() {
        return helpRepo.findAll();
    }
    
    public Help findHelpbyRequestID(Help help) {
        return helpRepo.getOne(help.getRequestId());     
    }
}
