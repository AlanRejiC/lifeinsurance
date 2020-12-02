package com.cognizant.model;

import java.time.LocalDate;

public class Claim {

	private String claimNumber;
	private LocalDate incurredDate;
	private LocalDate reportedDate;
	private LocalDate datePaid;
	private boolean status;
	private double totalCharge;
	private double preCharge;
	private double postCharge;
	
	public String getClaimNumber() {
		return claimNumber;
	}
	public void setClaimNumber(String claimNumber) {
		this.claimNumber = claimNumber;
	}
	public LocalDate getIncurredDate() {
		return incurredDate;
	}
	public void setIncurredDate(LocalDate incurredDate) {
		this.incurredDate = incurredDate;
	}
	public LocalDate getReportedDate() {
		return reportedDate;
	}
	public void setReportedDate(LocalDate reportedDate) {
		this.reportedDate = reportedDate;
	}
	public LocalDate getDatePaid() {
		return datePaid;
	}
	public void setDatePaid(LocalDate datePaid) {
		this.datePaid = datePaid;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public double getTotalCharge() {
		return totalCharge;
	}
	public void setTotalCharge(double totalCharge) {
		this.totalCharge = totalCharge;
	}
	public double getPreCharge() {
		return preCharge;
	}
	public void setPreCharge(double preCharge) {
		this.preCharge = preCharge;
	}
	public double getPostCharge() {
		return postCharge;
	}
	public void setPostCharge(double postCharge) {
		this.postCharge = postCharge;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((claimNumber == null) ? 0 : claimNumber.hashCode());
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
		Claim other = (Claim) obj;
		if (claimNumber == null) {
			if (other.claimNumber != null)
				return false;
		} else if (!claimNumber.equals(other.claimNumber))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Claim [claimNumber=" + claimNumber + ", incurredDate=" + incurredDate + ", reportedDate=" + reportedDate
				+ ", datePaid=" + datePaid + ", status=" + status + ", totalCharge=" + totalCharge + ", preCharge="
				+ preCharge + ", postCharge=" + postCharge + "]";
	}
	
	
	
}
