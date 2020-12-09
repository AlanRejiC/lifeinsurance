package com.cognizant.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.cognizant.model.Agent;
/**
 * 
 * @author SA
 *
 */
public interface AgentRepo extends JpaRepository<Agent,Integer> {

}
