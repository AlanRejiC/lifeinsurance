package com.cognizant.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.model.Claim;
import com.cognizant.model.User;

@Repository
public interface UserRepo2 extends PagingAndSortingRepository<User,Integer>{
	
	@Query("select u from User u where role = ?1")
	List<User> findUsersRole(String role);
	
	@Query("select u from User u where first_name = ?1")
	List<User> findParticularUser(String firstName);
	
	@Query("select u from User u where contact = ?1")
	List<User> findUserNumber(String contact);
	
	@Query("select u from User u where email = ?1")
	List<User> findUserEmail(String email);
}


