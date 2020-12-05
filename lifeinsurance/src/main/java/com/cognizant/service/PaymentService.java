package com.cognizant.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.model.Payment;
import com.cognizant.model.Policy;
import com.cognizant.repository.PaymentRepo;
/**
 * 
 * @author Priyanka Nath
 *
 */

@Service
public class PaymentService {

	@Autowired
	PaymentRepo paymentRepo;
	
	public Payment findCardNumber(int cardNo) {
		return paymentRepo.getOne(cardNo);
	}

	public List<Payment> getAll() {
		return paymentRepo.findAll();
	}

	public void saveCard(Payment payment) {
		paymentRepo.save(payment);
	}

	public boolean cardNumberValidation(Payment payment) {
		boolean isValid = false;
		Payment temp = findCardNumber(payment.getCardNo());
		if (temp.getCardNo() == payment.getCardNo())
			isValid = true;
		return isValid;
	}

	public boolean cardCvvValidation(Payment payment) {
		boolean isValid = false;
		Payment temp = findCardNumber(payment.getCardNo());
		if (temp.getCvv() == (payment.getCvv()))
			isValid = true;
		return isValid;
	}

	public boolean cardPinValidation(Payment payment) {
		boolean isValid = false;
		Payment temp = findCardNumber(payment.getCardNo());
		if (temp.getPin() == payment.getPin())
			isValid = true;
		return isValid;
	}

	public double calculateBalance(Payment payment) {
		
		Policy policy = new Policy();
		double balance = 0.0;
		balance = payment.getAvailableBalance() - policy.getNetAmountPerYear();
		return balance;

	}

	public void getCustomerCardDetails(Payment payment) {
		payment.getCardNo();
		payment.getCardHolderName();
		payment.getCardType();
		payment.getAvailableBalance();
		payment.getExpiryDate();
		payment.getCvv();
	}

}