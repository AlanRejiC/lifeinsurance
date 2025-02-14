package com.cognizant.validate;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.cognizant.model.User;

@Service
public class RegistrationValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		User user = (User) target;
		ValidationUtils.rejectIfEmpty(errors, "userId","", "UserId cannot be blank");
		ValidationUtils.rejectIfEmpty(errors, "firstName","", "First Name Id cannot be blank");
		ValidationUtils.rejectIfEmpty(errors, "lastName","", "Last Name cannot be blank");
		ValidationUtils.rejectIfEmpty(errors, "gender","", "Choose any one of the options");
		ValidationUtils.rejectIfEmpty(errors, "dob","", "Date Of Birth cannot be blank");
		ValidationUtils.rejectIfEmpty(errors, "contact","", "Please fill your contact number");
		ValidationUtils.rejectIfEmpty(errors, "password","", "Password cannot be blank");
		ValidationUtils.rejectIfEmpty(errors, "confirmpassword","", "Password cannot be blank");
		ValidationUtils.rejectIfEmpty(errors, "email","", "Email cannot be blank");
		ValidationUtils.rejectIfEmpty(errors, "security1","", "Please select a security question");
		ValidationUtils.rejectIfEmpty(errors, "ans1","", "This field cannot be blank");
		ValidationUtils.rejectIfEmpty(errors, "security2","", "Please select a security question");
		ValidationUtils.rejectIfEmpty(errors, "ans2","", "UserName cannot be blank");
		ValidationUtils.rejectIfEmpty(errors, "security3","", "Please select a security question");
		ValidationUtils.rejectIfEmpty(errors, "ans3","", "This field cannot be blank");
		String userid=""+user.getUserId();
		if(!userid.matches("[0-9]{8}")){
			errors.rejectValue("userId", "","UserId should be a 8 digit number");
			}
		
		String phoneNo = ""+user.getContact();
		if(!phoneNo.matches("[0-9]{10}")){
			errors.rejectValue("contact", "", "Contact Number should be of 10 digits/Contact Number should not be blank");
		}
		boolean status1=true;
		boolean status2=true;
		String regex = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$";
		Pattern p = Pattern.compile(regex);
		Matcher m1 = p.matcher(user.getPassword());
		Matcher m2 = p.matcher(user.getConfirmpassword());
		if (m1.matches() == false) {
			errors.rejectValue("password", "",
					" Check whether \r\n" + "It contains at least 8 characters and at most 20 characters.\r\n"
							+ "It contains at least one digit.\r\n"
							+ "It contains at least one upper case alphabet.\r\n"
							+ "It contains at least one lower case alphabet.\r\n"
							+ "It contains at least one special character which includes !@#$%&*()-+=^.\r\n"
							+ "It doesn't contain any white space.");
			status1=false;
		}
		if (m2.matches() == false) {
			errors.rejectValue("password", "",
					" Check whether \r\n" + "It contains at least 8 characters and at most 20 characters.\r\n"
							+ "It contains at least one digit.\r\n"
							+ "It contains at least one upper case alphabet.\r\n"
							+ "It contains at least one lower case alphabet.\r\n"
							+ "It contains at least one special character which includes !@#$%&*()-+=^.\r\n"
							+ "It doesn't contain any white space.");
			status2=false;
		}
		if(status1 && status2){
		    if(!(user.getConfirmpassword().equals(user.getPassword()))){
			errors.rejectValue("confirmpassword","", "Password and Confirm Password should be same");
		    }}
		
		if(!(user.getEmail().matches("^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"))){
			errors.rejectValue("email", "","Should be a proper email ID format");
		}

	}
	

}
