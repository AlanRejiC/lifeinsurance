package com.cognizant.app;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import com.cognizant.controller.InsuranceController;
import com.cognizant.service.ClaimService;
import com.cognizant.service.InsuranceService;
import com.cognizant.service.PaymentService;
import com.cognizant.service.UserService;
import com.cognizant.validate.InsuranceValidator;
import com.cognizant.validate.PaymentValidator;

/**
 * 
 * @author Priyanka Nath
 *
 */

@RunWith(SpringRunner.class)
@SpringBootTest
public class TestInsuranceController {

	@InjectMocks
	private InsuranceController insuranceController;
	private MockMvc mockMvc;

	@Mock
	private InsuranceService insuranceService;

	@Mock
	private ClaimService claimService;

	@Mock
	private PaymentService paymentService;

	@Mock
	private InsuranceValidator insuranceValidator;

	@Mock
	private PaymentValidator paymentValidator;

	@Mock
	private UserService userService;

	@SuppressWarnings("deprecation")
	@Before
	public void setUp() throws Exception {

		MockitoAnnotations.initMocks(this);
		this.mockMvc = MockMvcBuilders.standaloneSetup(insuranceController).build();
	}

	@Test
	public void getPayment() throws Exception {

		this.mockMvc.perform(get("/getPaymentPage")).andExpect(status().isOk());
	}

	@Test
	public void getSuccessPayment() throws Exception {

		this.mockMvc.perform(get("/getPaymentPage")).andExpect(status().isOk());
	}

	@Test
	public void getInsurancePageTest() throws Exception {

		this.mockMvc.perform(get("/getInsurancePage")).andExpect(status().isOk());
	}

	@Test
	public void getPaymentPageTest() throws Exception {

		this.mockMvc.perform(get("/getInsurancePage")).andExpect(status().isOk());

	}

}
