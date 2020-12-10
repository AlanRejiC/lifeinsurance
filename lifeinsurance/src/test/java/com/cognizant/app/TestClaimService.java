package com.cognizant.app;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.boot.test.context.SpringBootTest;

import com.cognizant.model.Claim;
import com.cognizant.repository.ClaimRepo;
import com.cognizant.repository.ClaimRepo2;
import com.cognizant.repository.InsuranceRepo;
import com.cognizant.repository.PolicyRepo;
import com.cognizant.repository.UserRepo;
import com.cognizant.service.ClaimService;

@RunWith(MockitoJUnitRunner.class)

public class TestClaimService {

	@InjectMocks
	private ClaimService claimService;

	@Mock
	private ClaimRepo claimRepo;
	@Mock
	private ClaimRepo2 claimRepo2;
	@Mock
	private PolicyRepo policyRepo;
	@Mock
	private UserRepo userRepo;
	@Mock
	private InsuranceRepo insuranceRepo;

	
	@Test
	public void testFindUser() {

		claimService.findUser((String) Mockito.anyString());
		Mockito.verify(insuranceRepo, Mockito.times(1)).getOne((String) Mockito.anyString());

	}
	@Test
	public void testFindCustName() {

		claimService.findCustName((String) Mockito.anyString());
		Mockito.verify(claimRepo, Mockito.times(1)).findClaim((String) Mockito.anyString());

	}
	@Test
	public void testFindTotDeductible() {

		claimService.findTotDeductible( Mockito.anyString());
		Mockito.verify(policyRepo, Mockito.times(1)).getOne(Mockito.anyString());

	}
	@SuppressWarnings("deprecation")
	@Test
	public void testSaveClaim() {

		claimService.saveClaim((Claim) Mockito.anyObject());
		Mockito.verify(claimRepo, Mockito.times(1)).save((Claim) Mockito.anyObject());

	}
	
	@Test
	public void testFindCust() {

		claimService.findCust((int) Mockito.anyInt());
		Mockito.verify(claimRepo2, Mockito.times(1)).getOne((int) Mockito.anyInt());

	}
	
//	@Test
//	public void testClaimStatus() {
//
//		claimService.claimStatus((int) Mockito.anyInt());
//		Mockito.verify(claimRepo2, Mockito.times(1)).getOne((int) Mockito.anyInt());
//
//	}
//	

}
