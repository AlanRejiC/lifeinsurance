package com.cognizant.validate;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.boot.web.servlet.RegistrationBean;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.cognizant.model.*;

/**
 * 
 * @author SA
 *
 */
@Service
public class LoginValidator implements Validator {

    @Override
    public void validate(Object arg0, Errors arg1) {
        User user = (User) arg0;
        String phoneNo = ""+user.getUserId();
      
        if(phoneNo ==null)
        {
        	arg1.rejectValue("userId", "", "Invalid Input- User Id cannot be blank");
        }
//Checking for blank fields 
        //ValidationUtils.rejectIfEmpty(arg1, "userId", "Invalid Input- User Id cannot be blank");
        //ValidationUtils.rejectIfEmpty(arg1, "password", "Invalid Input-Password cannot be blank");
    }

    @Override
    public boolean supports(Class<?> arg0) {
        return User.class.equals(arg0);
    }

}
