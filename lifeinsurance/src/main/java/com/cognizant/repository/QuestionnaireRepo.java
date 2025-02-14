package com.cognizant.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.model.Questionnaire;

@Repository
public interface QuestionnaireRepo extends JpaRepository<Questionnaire, Integer>{ 

}
