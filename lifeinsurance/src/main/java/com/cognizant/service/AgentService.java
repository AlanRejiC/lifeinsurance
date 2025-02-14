package com.cognizant.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cognizant.model.Agent;
import com.cognizant.model.Policy;
import com.cognizant.repository.AgentRepo;

/**
 * 
 * @author SA
 *
 */
@Service
public class AgentService {

	@Autowired
	private AgentRepo agentRepo;

	public void saveAgent(Agent agent) {
		agentRepo.save(agent);
	}

	
}
