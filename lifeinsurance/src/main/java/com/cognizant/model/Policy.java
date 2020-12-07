package com.cognizant.model;

import javax.persistence.*;

/**
 * 
 * @author Priyanka Nath
 *
 */
@Entity
@Table(name = "policy_table")
public class Policy {
	@Id
	@Column(name = "policy_number")
	private int policyNumber;
	@Column(name = "policy_name")
	private String policyName;
	@Column(name = "policy_description")
	private String policyDescription;
	@Column(name = "net_amount_per_year")
	private float netAmountPerYear;
	@Column(name = "policy_term")
	private int policyTerm;
	@Column(name = "tot_deductible")
	private float totDeductible;
	@Column(name = "tot_co_insurance")
	private int totCoInsurance;
	@Column(name = "interest_rate")
	private float interestRate;

	public int getPolicyNumber() {
		return policyNumber;
	}

	public void setPolicyNumber(int policyNumber) {
		this.policyNumber = policyNumber;
	}

	public String getPolicyName() {
		return policyName;
	}

	public void setPolicyName(String policyName) {
		this.policyName = policyName;
	}

	public String getPolicyDescription() {
		return policyDescription;
	}

	public void setPolicyDescription(String policyDescription) {
		this.policyDescription = policyDescription;
	}

	public float getNetAmountPerYear() {
		return netAmountPerYear;
	}

	public void setNetAmountPerYear(float netAmountPerYear) {
		this.netAmountPerYear = netAmountPerYear;
	}

	public int getPolicyTerm() {
		return policyTerm;
	}

	public void setPolicyTerm(int policyTerm) {
		this.policyTerm = policyTerm;
	}

	public float getTotDeductible() {
		return totDeductible;
	}

	public void setTotDeductible(float totDeductible) {
		this.totDeductible = totDeductible;
	}

	public int getTotCoInsurance() {
		return totCoInsurance;
	}

	public void setTotCoInsurance(int totCoInsurance) {
		this.totCoInsurance = totCoInsurance;
	}

	public float getInterestRate() {
		return interestRate;
	}

	public void setInterestRate(float interestRate) {
		this.interestRate = interestRate;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((policyName == null) ? 0 : policyName.hashCode());
		result = prime * result + policyNumber;
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
		Policy other = (Policy) obj;
		if (policyName == null) {
			if (other.policyName != null)
				return false;
		} else if (!policyName.equals(other.policyName))
			return false;
		if (policyNumber != other.policyNumber)
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Policy [policyNumber=" + policyNumber + ", policyName=" + policyName + ", policyDescription="
				+ policyDescription + ", netAmountPerYear=" + netAmountPerYear + ", policyTerm=" + policyTerm + "]";
	}

}