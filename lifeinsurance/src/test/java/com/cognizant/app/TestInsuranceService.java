package com.cognizant.app;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;

import com.cognizant.model.Insurance;
import com.cognizant.repository.InsuranceRepo;
import com.cognizant.service.InsuranceService;

/**
 * @author Priyanka Nath
 *
 */
@RunWith(MockitoJUnitRunner.class)
public class TestInsuranceService {

	@InjectMocks
	private InsuranceService insuranceService;
	
	@Mock
	private InsuranceRepo insuranceRepo;
	
	
	
	/*@Before
	public void setUp() {
		Insurance insurance= new Insurance()
	}*/
	@Test
	public void testGetInsurance() {
		insuranceService.getInsurance((String)Mockito.anyString());
		Mockito.verify(insuranceRepo,Mockito.times(1)).getOne(Mockito.anyString());
	}
	
	@SuppressWarnings("deprecation")
	@Test
	public void testSaveInsurance() {
		insuranceService.saveInsurance((Insurance) Mockito.anyObject());
		Mockito.verify(insuranceRepo, Mockito.times(1)).save((Insurance) Mockito.anyObject());
	}

}
