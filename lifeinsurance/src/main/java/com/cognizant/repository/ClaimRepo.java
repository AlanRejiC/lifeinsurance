package com.cognizant.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cognizant.model.Claim;

@Repository
public interface ClaimRepo extends JpaRepository<Claim, Integer> {
	@Query("select * from calim where cust_name=?1")
	Claim findClaim(String custName);
}
