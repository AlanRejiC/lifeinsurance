
package com.cognizant.validate;

import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.cognizant.model.Insurance;

@Service
public class InsuranceValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return Insurance.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		Insurance insurance =(Insurance) target;
		ValidationUtils.rejectIfEmpty(errors, "custName","", "Name should not be blank");
		ValidationUtils.rejectIfEmpty(errors, "custGender","", "Gender should not be blank");
		ValidationUtils.rejectIfEmpty(errors, "custDob","", "Date of Birth cannot be blank");
		ValidationUtils.rejectIfEmpty(errors, "custRelationship","", "Customer Relationship cannot be blank");
		ValidationUtils.rejectIfEmpty(errors, "custResidenceDate","", "Residence Date should not be blank");
		ValidationUtils.rejectIfEmpty(errors, "custVillage","", "Village should not be blank");
		ValidationUtils.rejectIfEmpty(errors, "custBlock","", "Block should not be blank");
		ValidationUtils.rejectIfEmpty(errors, "custDistrict","", "District should not be blank");
		ValidationUtils.rejectIfEmpty(errors, "custState","", "State should not be blank");
		ValidationUtils.rejectIfEmpty(errors, "custPin","", "Pin should not be blank");
		ValidationUtils.rejectIfEmpty(errors, "custOccupation","", "Occupation should not be blank");
		ValidationUtils.rejectIfEmpty(errors, "custIndustry","", "Industry should not be blank");
		ValidationUtils.rejectIfEmpty(errors, "custSalary","", "Salary should not be blank");
		ValidationUtils.rejectIfEmpty(errors, "diagnosisDate","", "Diagnosis should not be blank");
		ValidationUtils.rejectIfEmpty(errors, "diseaseCode","", "Code cannnot be blank");
		ValidationUtils.rejectIfEmpty(errors, "policyName","", "Policy Name should not be blank");
		ValidationUtils.rejectIfEmpty(errors, "matureDate","", "Mature Date should not be blank");
	}

}
