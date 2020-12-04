package com.cognizant.model;

import java.time.LocalDate;
import java.util.Date;

import javax.persistence.*;
@Entity
@Table(name="insurance_table")
public class Insurance {
	@Id
	@Column(name="cust_name")
	private String custName;
	@Column(name="cust_gender")
	private String custGender;
	@Column(name="cust_dob")
	private Date custDob;
	@Column(name="cust_relationship")
	private String custRelationship;
	@Column(name="cust_residence_date")
	private LocalDate custResidenceDate;
	@Column(name="cust_village")
	private String custVillage;
	@Column(name="cust_block")
	private String custBlock;
	@Column(name="cust_district")
	private String custDistrict;
	@Column(name="cust_pin")
	private int custPin;
	@Column(name="cust_occupation")
	private String custOccupation;
	@Column(name="cust_industry")
	private String custIndustry;
	@Column(name="cust_salary")
	private float custSalary;
	@Column(name="diagnosis_date")
	private Date diagnosisDate;
	@Column(name="disease_code")
	private int diseaseCode;
	@Column(name="policy_name")
	private String policyName;
	@Column(name="mature_date")
	private Date matureDate;

	

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

	public Date getCustDob() {
		return custDob;
	}

	public void setCustDob(Date custDob) {
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

	public Date getDiagnosisDate() {
		return diagnosisDate;
	}

	public void setDiagnosisDate(Date diagnosisDate) {
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

	public Date getMatureDate() {
		return matureDate;
	}

	public void setMatureDate(Date matureDate) {
		this.matureDate = matureDate;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((custBlock == null) ? 0 : custBlock.hashCode());
		result = prime * result + ((custDistrict == null) ? 0 : custDistrict.hashCode());
		result = prime * result + ((custDob == null) ? 0 : custDob.hashCode());
		result = prime * result + ((custGender == null) ? 0 : custGender.hashCode());
		result = prime * result + ((custName == null) ? 0 : custName.hashCode());
		result = prime * result + ((custOccupation == null) ? 0 : custOccupation.hashCode());
		result = prime * result + custPin;
		result = prime * result + ((custRelationship == null) ? 0 : custRelationship.hashCode());
		result = prime * result + ((custResidenceDate == null) ? 0 : custResidenceDate.hashCode());
		result = prime * result + Float.floatToIntBits(custSalary);
		result = prime * result + ((custVillage == null) ? 0 : custVillage.hashCode());
		result = prime * result + ((diagnosisDate == null) ? 0 : diagnosisDate.hashCode());
		result = prime * result + diseaseCode;
		result = prime * result + ((matureDate == null) ? 0 : matureDate.hashCode());
		result = prime * result + ((policyName == null) ? 0 : policyName.hashCode());
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
		if (custBlock == null) {
			if (other.custBlock != null)
				return false;
		} else if (!custBlock.equals(other.custBlock))
			return false;
		if (custDistrict == null) {
			if (other.custDistrict != null)
				return false;
		} else if (!custDistrict.equals(other.custDistrict))
			return false;
		if (custDob == null) {
			if (other.custDob != null)
				return false;
		} else if (!custDob.equals(other.custDob))
			return false;
		if (custGender == null) {
			if (other.custGender != null)
				return false;
		} else if (!custGender.equals(other.custGender))
			return false;
		if (custName == null) {
			if (other.custName != null)
				return false;
		} else if (!custName.equals(other.custName))
			return false;
		if (custOccupation == null) {
			if (other.custOccupation != null)
				return false;
		} else if (!custOccupation.equals(other.custOccupation))
			return false;
		if (custPin != other.custPin)
			return false;
		if (custRelationship == null) {
			if (other.custRelationship != null)
				return false;
		} else if (!custRelationship.equals(other.custRelationship))
			return false;
		if (custResidenceDate == null) {
			if (other.custResidenceDate != null)
				return false;
		} else if (!custResidenceDate.equals(other.custResidenceDate))
			return false;
		if (Float.floatToIntBits(custSalary) != Float.floatToIntBits(other.custSalary))
			return false;
		if (custVillage == null) {
			if (other.custVillage != null)
				return false;
		} else if (!custVillage.equals(other.custVillage))
			return false;
		if (diagnosisDate == null) {
			if (other.diagnosisDate != null)
				return false;
		} else if (!diagnosisDate.equals(other.diagnosisDate))
			return false;
		if (diseaseCode != other.diseaseCode)
			return false;
		if (matureDate == null) {
			if (other.matureDate != null)
				return false;
		} else if (!matureDate.equals(other.matureDate))
			return false;
		if (policyName == null) {
			if (other.policyName != null)
				return false;
		} else if (!policyName.equals(other.policyName))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Insurance [custName=" + custName + ", custGender=" + custGender + ", custDob=" + custDob
				+ ", custRelationship=" + custRelationship + ", custResidenceDate=" + custResidenceDate
				+ ", custVillage=" + custVillage + ", custBlock=" + custBlock + ", custDistrict=" + custDistrict
				+ ", custPin=" + custPin + ", custOccupation=" + custOccupation + ", custIndustry=" + custIndustry
				+ ", custSalary=" + custSalary + ", diagnosisDate=" + diagnosisDate + ", diseaseCode=" + diseaseCode
				+ ", policyName=" + policyName + ", matureDate=" + matureDate + "]";
	}

	

}
