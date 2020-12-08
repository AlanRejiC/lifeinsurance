package com.cognizant.model;

import java.time.LocalDate;

import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

@Entity
@Table(name="user")
public class User {
	@Id
	@Column(name="user_id")
	private int userId;
	@Column(name="first_name")
	private String firstName;
	@Column(name="last_name")
	private String lastName;
	@Column(name="gender")
	private String gender;
	@DateTimeFormat(iso = ISO.DATE)
	@Column(name="dob")
	private LocalDate dob;
	@Column(name="contact")
	private String contact;
	@Column(name="password")
	private String password;
	@Column(name="confirm_password")
	private String confirmpassword;
	@Column(name="email")
	private String email;
	@Column(name="security_1")
	private String security1;
	@Column(name="ans_1")
	private String ans1;
	@Column(name="security_2")
	private String security2;
	@Column(name="ans_2")
	private String ans2;
	@Column(name="security_3")
	private String security3;
	@Column(name="ans_3")
	private String ans3;
	@Column(name="role")
	private String role;
	@Column(name="login")
	private Boolean login;
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
	public LocalDate getDob() {
		return dob;
	}
	public void setDob(LocalDate dob) {
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
	public Boolean getLogin() {
		return login;
	}
	public void setLogin(Boolean login) {
		this.login = login;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((ans1 == null) ? 0 : ans1.hashCode());
		result = prime * result + ((ans2 == null) ? 0 : ans2.hashCode());
		result = prime * result + ((ans3 == null) ? 0 : ans3.hashCode());
		result = prime * result + ((confirmpassword == null) ? 0 : confirmpassword.hashCode());
		result = prime * result + ((contact == null) ? 0 : contact.hashCode());
		result = prime * result + ((dob == null) ? 0 : dob.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((firstName == null) ? 0 : firstName.hashCode());
		result = prime * result + ((gender == null) ? 0 : gender.hashCode());
		result = prime * result + ((lastName == null) ? 0 : lastName.hashCode());
		result = prime * result + ((login == null) ? 0 : login.hashCode());
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		result = prime * result + ((role == null) ? 0 : role.hashCode());
		result = prime * result + ((security1 == null) ? 0 : security1.hashCode());
		result = prime * result + ((security2 == null) ? 0 : security2.hashCode());
		result = prime * result + ((security3 == null) ? 0 : security3.hashCode());
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
		User other = (User) obj;
		if (ans1 == null) {
			if (other.ans1 != null)
				return false;
		} else if (!ans1.equals(other.ans1))
			return false;
		if (ans2 == null) {
			if (other.ans2 != null)
				return false;
		} else if (!ans2.equals(other.ans2))
			return false;
		if (ans3 == null) {
			if (other.ans3 != null)
				return false;
		} else if (!ans3.equals(other.ans3))
			return false;
		if (confirmpassword == null) {
			if (other.confirmpassword != null)
				return false;
		} else if (!confirmpassword.equals(other.confirmpassword))
			return false;
		if (contact == null) {
			if (other.contact != null)
				return false;
		} else if (!contact.equals(other.contact))
			return false;
		if (dob == null) {
			if (other.dob != null)
				return false;
		} else if (!dob.equals(other.dob))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (firstName == null) {
			if (other.firstName != null)
				return false;
		} else if (!firstName.equals(other.firstName))
			return false;
		if (gender == null) {
			if (other.gender != null)
				return false;
		} else if (!gender.equals(other.gender))
			return false;
		if (lastName == null) {
			if (other.lastName != null)
				return false;
		} else if (!lastName.equals(other.lastName))
			return false;
		if (login == null) {
			if (other.login != null)
				return false;
		} else if (!login.equals(other.login))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (role == null) {
			if (other.role != null)
				return false;
		} else if (!role.equals(other.role))
			return false;
		if (security1 == null) {
			if (other.security1 != null)
				return false;
		} else if (!security1.equals(other.security1))
			return false;
		if (security2 == null) {
			if (other.security2 != null)
				return false;
		} else if (!security2.equals(other.security2))
			return false;
		if (security3 == null) {
			if (other.security3 != null)
				return false;
		} else if (!security3.equals(other.security3))
			return false;
		if (userId != other.userId)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", firstName=" + firstName + ", lastName=" + lastName + ", gender=" + gender
				+ ", dob=" + dob + ", contact=" + contact + ", password=" + password + ", confirmpassword="
				+ confirmpassword + ", email=" + email + ", security1=" + security1 + ", ans1=" + ans1 + ", security2="
				+ security2 + ", ans2=" + ans2 + ", security3=" + security3 + ", ans3=" + ans3 + ", role=" + role
				+ ", login=" + login + "]";
	}
	
	
	
	
	
}
