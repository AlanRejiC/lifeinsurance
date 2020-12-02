package com.cognizant.model;

public class Agent {
	private int agentId;
	private String agentName;
	private String agentEmail;
	private String agentMobileNo;
	private String agentAddress;
	
	public int getAgentId() {
		return agentId;
	}
	public void setAgentId(int agentId) {
		this.agentId = agentId;
	}
	public String getAgentName() {
		return agentName;
	}
	public void setAgentName(String agentName) {
		this.agentName = agentName;
	}
	public String getAgentEmail() {
		return agentEmail;
	}
	public void setAgentEmail(String agentEmail) {
		this.agentEmail = agentEmail;
	}
	public String getAgentMobileNo() {
		return agentMobileNo;
	}
	public void setAgentMobileNo(String agentMobileNo) {
		this.agentMobileNo = agentMobileNo;
	}
	public String getAgentAddress() {
		return agentAddress;
	}
	public void setAgentAddress(String agentAddress) {
		this.agentAddress = agentAddress;
	}
	@Override
	public String toString() {
		return "Agent [agentId=" + agentId + ", agentName=" + agentName + ", agentEmail=" + agentEmail
				+ ", agentMobileNo=" + agentMobileNo + ", agentAddress=" + agentAddress + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((agentAddress == null) ? 0 : agentAddress.hashCode());
		result = prime * result + ((agentEmail == null) ? 0 : agentEmail.hashCode());
		result = prime * result + agentId;
		result = prime * result + ((agentMobileNo == null) ? 0 : agentMobileNo.hashCode());
		result = prime * result + ((agentName == null) ? 0 : agentName.hashCode());
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
		Agent other = (Agent) obj;
		if (agentAddress == null) {
			if (other.agentAddress != null)
				return false;
		} else if (!agentAddress.equals(other.agentAddress))
			return false;
		if (agentEmail == null) {
			if (other.agentEmail != null)
				return false;
		} else if (!agentEmail.equals(other.agentEmail))
			return false;
		if (agentId != other.agentId)
			return false;
		if (agentMobileNo == null) {
			if (other.agentMobileNo != null)
				return false;
		} else if (!agentMobileNo.equals(other.agentMobileNo))
			return false;
		if (agentName == null) {
			if (other.agentName != null)
				return false;
		} else if (!agentName.equals(other.agentName))
			return false;
		return true;
	}
	
}
