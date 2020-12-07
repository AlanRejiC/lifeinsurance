package com.cognizant.model;

import java.time.LocalDate;

import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

/**
 * 
 * @author Priyanka Nath
 *
 */
@Entity
@Table(name = "claim")
public class Claim {

	@Id
	@Column(name = "claim_number")
	private int claimNumber;
	@DateTimeFormat(iso = ISO.DATE)
	@Column(name = "incurred_date")
	private LocalDate incurredDate;
	@DateTimeFormat(iso = ISO.DATE)
	@Column(name = "reported_date")
	private LocalDate reportedDate;
	@DateTimeFormat(iso = ISO.DATE)
	@Column(name = "date_paid")
	private LocalDate datePaid;
	@DateTimeFormat(iso = ISO.DATE)
	@Column(name = "admit_date")
	private LocalDate admitDate;
	@DateTimeFormat(iso = ISO.DATE)
	@Column(name = "release_date")
	private LocalDate releaseDate;
	@Column(name = "status")
	private String status;
	@Column(name = "total_charge")
	private double totalCharge;
	@Column(name = "pre_charge")
	private double preCharge;
	@Column(name = "post_charge")
	private double postCharge;
	@Column(name="cust_name")
	private String custName;
	

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

	public LocalDate getAdmitDate() {
		return admitDate;
	}

	public void setAdmitDate(LocalDate admitDate) {
		this.admitDate = admitDate;
	}

	public LocalDate getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(LocalDate releaseDate) {
		this.releaseDate = releaseDate;
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
				+ ", datePaid=" + datePaid + ", admitDate=" + admitDate + ", releaseDate=" + releaseDate + ", status="
				+ status + ", totalCharge=" + totalCharge + ", preCharge=" + preCharge + ", postCharge=" + postCharge
				+ "]";
	}

}