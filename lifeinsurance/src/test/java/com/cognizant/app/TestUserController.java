package com.cognizant.app;

import static org.assertj.core.api.Assertions.setExtractBareNamePropertyMethods;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.redirectedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import com.cognizant.controller.UserController;
import com.cognizant.service.UserService;

@WebMvcTest(UserController.class)
public class TestUserController {

	@Autowired
	private MockMvc mockMvc;
	@InjectMocks
	private UserController userController;

	@Mock
	private UserService userService;

	@Before
	public void setUp() throws Exception {

		MockitoAnnotations.initMocks(this);
		this.mockMvc = MockMvcBuilders.standaloneSetup(userController).build();

	}

	@Test
	public void testreturnUserPage() throws Exception {
		this.mockMvc.perform(get("/getUserPage").param("role", "customer")).andExpect(status().isOk());

	}

	@Test
	public void testSearchPage() throws Exception{
		this.mockMvc.perform(post("/getSearch")).andExpect(status().isOk());
	}

	@Test
	public void testUserEdit() throws Exception {
		this.mockMvc.perform(get("/userEdit").param("userId", "100001")).andExpect(redirectedUrl("/userSuccess)"));

	}

}