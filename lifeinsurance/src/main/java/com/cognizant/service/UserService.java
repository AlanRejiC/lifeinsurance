package com.cognizant.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;

import com.cognizant.model.User;
import com.cognizant.repository.UserRepo;

@Service
public class UserService {
	
	@Autowired
	private UserRepo userRepo;
	
	public User findUser(int userId)
	{
		return userRepo.getOne(userId);
	}
	
	public List<User> getAll()
	{
		return userRepo.findAll();
	}
	
	public void saveUser(User user)
	{
		userRepo.save(user);
	}
	
	public boolean userValidation(User user) {
	    boolean isValid=false;
	   User temp= findUser(user.getUserId());
	   if(temp.getPassword().equals(user.getPassword())) {
	       isValid=true;
	   }
        return isValid;

        }
	
	
}
