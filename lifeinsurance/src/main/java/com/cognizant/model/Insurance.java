package com.cognizant.model;

import java.util.Date;

public class Insurance {
	private String custName;
	private String custGender;
	private Date custDob;
	private String custRelationship;
	private String custResidence;
	private String custVillage;
	private String custBlock;
	private String custDistrict;
	private int custPin;
	private String custOccupation;
	private float custSalary;
	private Date diagnosisDate;
	private int diseaseCode;
	private String policyName;
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

	public String getCustResidence() {
		return custResidence;
	}

	public void setCustResidence(String custResidence) {
		this.custResidence = custResidence;
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
		result = prime * result + ((custResidence == null) ? 0 : custResidence.hashCode());
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
		if (custResidence == null) {
			if (other.custResidence != null)
				return false;
		} else if (!custResidence.equals(other.custResidence))
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
				+ ", custRelationship=" + custRelationship + ", custResidence=" + custResidence + ", custVillage="
				+ custVillage + ", custBlock=" + custBlock + ", custDistrict=" + custDistrict + ", custPin=" + custPin
				+ ", custOccupation=" + custOccupation + ", custSalary=" + custSalary + ", diagnosisDate="
				+ diagnosisDate + ", diseaseCode=" + diseaseCode + ", policyName=" + policyName + ", matureDate="
				+ matureDate + "]";
	}

}
