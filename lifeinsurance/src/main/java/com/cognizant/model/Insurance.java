package com.cognizant.model;

import java.time.LocalDate;
import java.util.Date;

import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
@Entity
@Table(name="insurance_table")
public class Insurance {
	@Id
	@Column(name="cust_name")
	private String custName;
	@Column(name="cust_gender")
	private String custGender;
	@DateTimeFormat(iso = ISO.DATE)
	@Column(name="cust_dob")
	private LocalDate custDob;
	@Column(name="cust_relationship")
	private String custRelationship;
	@DateTimeFormat(iso = ISO.DATE)
	@Column(name="cust_residence_date")
	private LocalDate custResidenceDate;
	@Column(name="cust_village")
	private String custVillage;
	@Column(name="cust_block")
	private String custBlock;
	@Column(name="cust_district")
	private String custDistrict;
	@Column(name="cust_state")
	private String custState;
	@Column(name="cust_pin")
	private int custPin;
	@Column(name="cust_occupation")
	private String custOccupation;
	@Column(name="cust_industry")
	private String custIndustry;
	@Column(name="cust_salary")
	private float custSalary;
	@DateTimeFormat(iso = ISO.DATE)
	@Column(name="diagnosis_date")
	private LocalDate diagnosisDate;
	@Column(name="disease_code")
	private int diseaseCode;
	@Column(name="policy_name")
	private String policyName;
	@DateTimeFormat(iso = ISO.DATE)
	@Column(name="mature_date")
	private LocalDate matureDate;
	public String getCustName() {
		return custName;
	}
	public void setCustName(String custName) {
		this.custName = custName;
	}
	public String getCustGender() {
		return custGender;
	}
	public void setCustGender(String custGender) {
		this.custGender = custGender;
	}
	public LocalDate getCustDob() {
		return custDob;
	}
	public void setCustDob(LocalDate custDob) {
		this.custDob = custDob;
	}
	public String getCustRelationship() {
		return custRelationship;
	}
	public void setCustRelationship(String custRelationship) {
		this.custRelationship = custRelationship;
	}
	public LocalDate getCustResidenceDate() {
		return custResidenceDate;
	}
	public void setCustResidenceDate(LocalDate custResidenceDate) {
		this.custResidenceDate = custResidenceDate;
	}
	public String getCustVillage() {
		return custVillage;
	}
	public void setCustVillage(String custVillage) {
		this.custVillage = custVillage;
	}
	public String getCustBlock() {
		return custBlock;
	}
	public void setCustBlock(String custBlock) {
		this.custBlock = custBlock;
	}
	public String getCustDistrict() {
		return custDistrict;
	}
	public void setCustDistrict(String custDistrict) {
		this.custDistrict = custDistrict;
	}
	public String getCustState() {
		return custState;
	}
	public void setCustState(String custState) {
		this.custState = custState;
	}
	public int getCustPin() {
		return custPin;
	}
	public void setCustPin(int custPin) {
		this.custPin = custPin;
	}
	public String getCustOccupation() {
		return custOccupation;
	}
	public void setCustOccupation(String custOccupation) {
		this.custOccupation = custOccupation;
	}
	public String getCustIndustry() {
		return custIndustry;
	}
	public void setCustIndustry(String custIndustry) {
		this.custIndustry = custIndustry;
	}
	public float getCustSalary() {
		return custSalary;
	}
	public void setCustSalary(float custSalary) {
		this.custSalary = custSalary;
	}
	public LocalDate getDiagnosisDate() {
		return diagnosisDate;
	}
	public void setDiagnosisDate(LocalDate diagnosisDate) {
		this.diagnosisDate = diagnosisDate;
	}
	public int getDiseaseCode() {
		return diseaseCode;
	}
	public void setDiseaseCode(int diseaseCode) {
		this.diseaseCode = diseaseCode;
	}
	public String getPolicyName() {
		return policyName;
	}
	public void setPolicyName(String policyName) {
		this.policyName = policyName;
	}
	public LocalDate getMatureDate() {
		return matureDate;
	}
	public void setMatureDate(LocalDate matureDate) {
		this.matureDate = matureDate;
	}
	@Override
	public String toString() {
		return "Insurance [custName=" + custName + ", custGender=" + custGender + ", custDob=" + custDob
				+ ", custRelationship=" + custRelationship + ", custResidenceDate=" + custResidenceDate
				+ ", custVillage=" + custVillage + ", custBlock=" + custBlock + ", custDistrict=" + custDistrict
				+ ", custState=" + custState + ", custPin=" + custPin + ", custOccupation=" + custOccupation
				+ ", custIndustry=" + custIndustry + ", custSalary=" + custSalary + ", diagnosisDate=" + diagnosisDate
				+ ", diseaseCode=" + diseaseCode + ", policyName=" + policyName + ", matureDate=" + matureDate + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((custName == null) ? 0 : custName.hashCode());
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
		Insurance other = (Insurance) obj;
		if (custName == null) {
			if (other.custName != null)
				return false;
		} else if (!custName.equals(other.custName))
			return false;
		return true;
	}

	

	

	

}
