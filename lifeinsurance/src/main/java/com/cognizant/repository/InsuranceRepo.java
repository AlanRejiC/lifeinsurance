package com.cognizant.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.model.Insurance;

@Repository
public interface InsuranceRepo extends JpaRepository<Insurance,String>{

}
