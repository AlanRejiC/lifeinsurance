package com.cognizant.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.model.Claim;

@Repository
public interface ClaimRepo2 extends JpaRepository<Claim, Integer> {

}
