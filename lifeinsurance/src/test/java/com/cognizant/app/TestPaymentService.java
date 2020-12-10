package com.cognizant.app;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.data.jpa.repository.JpaRepository;

import com.cognizant.model.Payment;
import com.cognizant.repository.PaymentRepo;
import com.cognizant.service.PaymentService;

@RunWith(MockitoJUnitRunner.class)
public class TestPaymentService {

	@InjectMocks
	private PaymentService paymentService;

	@Mock
	private PaymentRepo paymentRepo;

	@Mock
	private Payment payment;

	@Test
	public void testFindCardNumber() {
		paymentService.findCardNumber((int) Mockito.anyInt());
		Mockito.verify(paymentRepo, Mockito.times(1)).getOne((int) Mockito.anyInt());

	}

	@Test
	public void testGetall() {
		paymentService.getAll();
		Mockito.verify(paymentRepo, Mockito.times(1)).findAll();
	}

	@SuppressWarnings("deprecation")
	@Test
	public void testSaveCard() {

		paymentService.saveCard(Mockito.anyObject());
		Mockito.verify(paymentRepo, Mockito.times(1)).save((Payment) Mockito.anyObject());

	}

	@Test
	public void testcardNumberValidation() {
		paymentService.findCardNumber((int) Mockito.anyInt());
		Mockito.verify(paymentRepo, Mockito.times(1)).getOne((int) Mockito.anyInt());

	}

	@Test
	public void testcardCvvValidation() {
		paymentService.findCardNumber((int) Mockito.anyInt());
		Mockito.verify(paymentRepo, Mockito.times(1)).getOne((int) Mockito.anyInt());

	}

	@Test
	public void testCardPinValidation() {
		paymentService.findCardNumber((int) Mockito.anyInt());
		Mockito.verify(paymentRepo, Mockito.times(1)).getOne((int) Mockito.anyInt());

	}

	@SuppressWarnings("deprecation")
	@Test
	public void testCalculateBalance() {
		paymentRepo.getOne(Mockito.anyObject());
		Mockito.verify(paymentRepo, Mockito.times(1)).getOne(Mockito.anyObject());

	}

}
