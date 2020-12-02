package com.cognizant.model;

public class Policy {
	private int policyNumber;
	private String policyName;
	private String policyDescription;
	private float netAmountPerYear;
	private int policyTerm;

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
