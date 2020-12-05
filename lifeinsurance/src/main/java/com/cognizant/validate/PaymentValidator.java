package com.cognizant.validate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.cognizant.model.Insurance;
import com.cognizant.model.Payment;
import com.cognizant.service.PaymentService;

@Service
public class PaymentValidator implements Validator {

	@Autowired
	PaymentService paymentService;
	
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Payment.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		Payment payment =(Payment) target;
		if(!(paymentService.cardNumberValidation(payment)))
		{
			errors.rejectValue("cardNo","","Enter a Valid Card No");
		}
		
		if(!(paymentService.cardCvvValidation(payment)))
		{
			errors.rejectValue("cvv","","Enter a Valid CVV number");
		}
		
		if(!(paymentService.cardPinValidation(payment)))
		{
			errors.rejectValue("pin","","Enter the correct pin");
		}
		
		if(!(paymentService.calculateBalance(payment)<0))
		{
			errors.rejectValue("availableBalance","","Insufficent Fund");
		}
		
	}

}