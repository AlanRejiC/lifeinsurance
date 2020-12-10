package com.cognizant.app;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
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

import com.cognizant.controller.ClaimController;
import com.cognizant.service.ClaimService;
import com.cognizant.service.UserService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class TestClaimController {
	@InjectMocks
	private ClaimController claimController;

	private MockMvc mockMvc;

	@Mock
	private ClaimService claimService;
	@Mock
	private UserService userService;

	
	@Before
	public void setUp() throws Exception{
		MockitoAnnotations.initMocks(this);
		this.mockMvc=MockMvcBuilders.standaloneSetup(claimController).build();
	}
	
	@Test
	public void testClaimPage() throws Exception{
		this.mockMvc.perform(get("/getClaimPage")).andExpect(status().isOk());
	}
	
	@Test
	public void testPostClaimPage() throws Exception{
		this.mockMvc.perform(get("/getClaimPage")).andExpect(status().isOk());
	}
	
	@Test
	public void testClaimEditPage() throws Exception{
		this.mockMvc.perform(get("/getClaimEdit")).andExpect(status().isOk());
	}
	
	@Test
	public void postClaimEditPage() throws Exception{
		this.mockMvc.perform(get("/getClaimEdit")).andExpect(status().isOk());
	}
	
	@Test
	public void testGetEditClaimPage() throws Exception{
		this.mockMvc.perform(get("/getClaimEdit").param("claimNumber", "1236")).andExpect(redirectedUrl("/getClaimEdit)"));
	}
	
}
