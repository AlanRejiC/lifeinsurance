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

import com.cognizant.controller.AdminController;

import com.cognizant.service.UserService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class TestAdminController {

	@InjectMocks
	private AdminController adminController;
	private MockMvc mockMvc;

	@Mock
	private UserService userService;

	@SuppressWarnings("deprecation")
	@Before
	public void setUp() throws Exception {

		MockitoAnnotations.initMocks(this);
		this.mockMvc = MockMvcBuilders.standaloneSetup(adminController).build();
	}

	@Test
	public void getAdminLoginPageTest() throws Exception {

		this.mockMvc.perform(get("/getAdminLoginPage")).andExpect(status().isOk());
	}

	@Test
	public void getgetAdminLoginSuccessTest() throws Exception {

		this.mockMvc.perform(get("/getAdminLoginPage")).andExpect(status().isOk());
	}

	@Test
	public void getAdminDashboardTest() throws Exception {

		this.mockMvc.perform(get("/getDashBoard")).andExpect(status().isOk());

	}

}
