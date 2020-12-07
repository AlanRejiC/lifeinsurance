package com.cognizant.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.model.Claim;
import com.cognizant.repository.ClaimRepo;

@Service
public class ClaimService {

	@Autowired
	ClaimRepo claimRepo;
	
	public Claim getClaim(int claimNumber)
	{
		return claimRepo.getOne(claimNumber);
	}
	
	public void saveClaim(Claim claim)
	{
		claimRepo.save(claim);
	}
	
	public List<Claim> getAll()
	{
		return claimRepo.findAll();
	}
	
}
