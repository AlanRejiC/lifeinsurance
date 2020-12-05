package com.cognizant.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.model.Insurance;
import com.cognizant.repository.InsuranceRepo;

@Service
public class InsuranceService {

	@Autowired
	InsuranceRepo insuranceRepo;

	public Insurance getInsurance(String name) {
		return insuranceRepo.getOne(name);
	}

	public void saveInsurance(Insurance insurance) {
		insuranceRepo.save(insurance);
	}
}
