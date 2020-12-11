package com.cognizant.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.model.User;
import com.cognizant.model.Claim;
import com.cognizant.model.Policy;
import com.cognizant.repository.UserRepo;
import com.cognizant.repository.UserRepo2;

@Service
public class UserService {

	@Autowired
	private UserRepo userRepo;

	@Autowired
	private UserRepo2 userRepo2;

	public User findUser(int userId) {
		return userRepo.getOne(userId);
	}

	public List<User> getAll() {
		return userRepo.findAll();
	}

	public void saveUser(User user) {
		userRepo.save(user);
	}

	public void deleteUser(User user) {
		userRepo.delete(user);
	}

	public boolean userValidation(User user) {
		boolean isValid = false;
		User temp = findUser(user.getUserId());
		if (temp.getPassword().equals(user.getPassword())) {
			isValid = true;
		}
		return isValid;

	}

	public boolean adminValidation(User user) {
		boolean isValid = false;
		User temp = findUser(user.getUserId());
		if (temp.getRole().equals("admin")) {
			isValid = true;
		}
		return isValid;
	}

	public List<User> findUserWithRole(String role) {
		return userRepo2.findUsersRole(role);
	}

	public List<User> findParticularUser(String name) {
		System.out.println("----Inside findParticular User----");
		return userRepo2.findParticularUser(name);
	}

	public List<User> findUserNumber(String number) {
		System.out.println("-----Inside findUserNumber----");
		return userRepo2.findUserNumber(number);
	}
	
	public List<User> findUserEmail(String email) {
		System.out.println("-----Inside findUserEMail---");
		return userRepo2.findUserEmail(email);
	}

}
