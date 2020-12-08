package com.cognizant.model;

import java.time.LocalDate;

public class Excel {

	private int userId;
	private String firstName;
	private String lastName;
	private String gender;
	private String dob;
	private String contact;
	private String password;
	private String confirmpassword;
	private String email;
	private String security1;
	private String ans1;
	private String security2;
	private String ans2;
	private String security3;
	private String ans3;
	private String role;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getConfirmpassword() {
		return confirmpassword;
	}
	public void setConfirmpassword(String confirmpassword) {
		this.confirmpassword = confirmpassword;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSecurity1() {
		return security1;
	}
	public void setSecurity1(String security1) {
		this.security1 = security1;
	}
	public String getAns1() {
		return ans1;
	}
	public void setAns1(String ans1) {
		this.ans1 = ans1;
	}
	public String getSecurity2() {
		return security2;
	}
	public void setSecurity2(String security2) {
		this.security2 = security2;
	}
	public String getAns2() {
		return ans2;
	}
	public void setAns2(String ans2) {
		this.ans2 = ans2;
	}
	public String getSecurity3() {
		return security3;
	}
	public void setSecurity3(String security3) {
		this.security3 = security3;
	}
	public String getAns3() {
		return ans3;
	}
	public void setAns3(String ans3) {
		this.ans3 = ans3;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}

	public String toString() {
		return "Excel [userId=" + userId + ", firstName=" + firstName + ", lastName=" + lastName + ", gender=" + gender
				+ ", dob=" + dob + ", contact=" + contact + ", password=" + password + ", confirmpassword="
				+ confirmpassword + ", email=" + email + ", security1=" + security1 + ", ans1=" + ans1 + ", security2="
				+ security2 + ", ans2=" + ans2 + ", security3=" + security3 + ", ans3=" + ans3 + ", role=" + role
				+ "]";
	}
	
	
}
