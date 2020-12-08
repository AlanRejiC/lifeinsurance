package com.cognizant.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.model.Claim;

@Repository
public interface ClaimRepo extends PagingAndSortingRepository<Claim, Integer> {
	@Query("select c from Claim c where cust_name = ?1")
			Claim findClaim(String custName);
}
