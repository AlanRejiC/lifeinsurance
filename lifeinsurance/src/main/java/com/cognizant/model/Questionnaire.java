package com.cognizant.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 
 * @author Priyanka Nath
 *
 */
@Entity
@Table(name = "questionnaire")
public class Questionnaire {
	@Id
	@Column(name = "id")
	private int id;
	@Column(name = "user_id")
	private int userId;
	@Column(name = "question_1")
	private String question1;
	@Column(name = "question_2")
	private String question2;
	@Column(name = "question_3")
	private String question3;
	@Column(name = "response_1")
	private String response1;
	@Column(name = "response_2")
	private String response2;
	@Column(name = "response_3")
	private String response3;
	@Column(name = "feedback")
	private String feedback;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getQuestion1() {
		return question1;
	}

	public void setQuestion1(String question1) {
		this.question1 = question1;
	}

	public String getQuestion2() {
		return question2;
	}

	public void setQuestion2(String question2) {
		this.question2 = question2;
	}

	public String getQuestion3() {
		return question3;
	}

	public void setQuestion3(String question3) {
		this.question3 = question3;
	}

	public String getResponse1() {
		return response1;
	}

	public void setResponse1(String response1) {
		this.response1 = response1;
	}

	public String getResponse2() {
		return response2;
	}

	public void setResponse2(String response2) {
		this.response2 = response2;
	}

	public String getResponse3() {
		return response3;
	}

	public void setResponse3(String response3) {
		this.response3 = response3;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		result = prime * result + userId;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Questionnaire other = (Questionnaire) obj;
		if (id != other.id)
			return false;
		if (userId != other.userId)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Questionnaire [id=" + id + ", userId=" + userId + ", question1=" + question1 + ", question2="
				+ question2 + ", question3=" + question3 + ", response1=" + response1 + ", response2=" + response2
				+ ", response3=" + response3 + ", feedback=" + feedback + "]";
	}

}
