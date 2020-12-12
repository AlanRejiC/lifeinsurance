package com.cognizant.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.model.Questionnaire;
import com.cognizant.model.User;
import com.cognizant.repository.QuestionnaireRepo;
import com.cognizant.repository.UserRepo;

@Service
public class QuestionnaireService {

	@Autowired
	private UserRepo userRepo;

	@Autowired
	private QuestionnaireRepo questionnaireRepo;

	public User findUser(int userId) {
		return userRepo.getOne(userId);
	}

	public void saveResponse(Questionnaire questionnaire) {
		questionnaireRepo.save(questionnaire);
	}

}
