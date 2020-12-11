package com.cognizant.app;

import static org.junit.Assert.assertTrue;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;

import com.cognizant.model.User;
import com.cognizant.repository.UserRepo;
import com.cognizant.repository.UserRepo2;
import com.cognizant.service.UserService;

@RunWith(MockitoJUnitRunner.class)
public class TestUserService {

	@InjectMocks
	private UserService userService;
	
	@Mock
	private UserRepo userRepo;
	
	@Mock
	private UserRepo2 userRepo2;
	
	
	
	@Test
	public void testFindingUser()
	{
		userService.findUser(Mockito.anyInt());
		Mockito.verify(userRepo,Mockito.times(1)).getOne(Mockito.anyInt());
		
	}
	
	@Test
	public void testFindingAllUsers()
	{
		userService.getAll();
		Mockito.verify(userRepo,Mockito.times(1)).findAll();
		
	}
	
	@Test
	public void testDeletingUser()
	{
		userService.deleteUser(Mockito.anyObject());
		Mockito.verify(userRepo,Mockito.times(1)).delete(Mockito.anyObject());
		
	}
	
}
