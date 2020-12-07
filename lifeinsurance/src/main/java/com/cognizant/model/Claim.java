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
	

	public int getClaimNumber() {
		return claimNumber;
	}

	public void setClaimNumber(int claimNumber) {
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

	public String isStatus() {
		return status;
	}

	public void setStatus(String status) {
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
		result = prime * result + ((admitDate == null) ? 0 : admitDate.hashCode());
		result = prime * result + claimNumber;
		result = prime * result + ((custName == null) ? 0 : custName.hashCode());
		result = prime * result + ((datePaid == null) ? 0 : datePaid.hashCode());
		result = prime * result + ((incurredDate == null) ? 0 : incurredDate.hashCode());
		long temp;
		temp = Double.doubleToLongBits(postCharge);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		temp = Double.doubleToLongBits(preCharge);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ((releaseDate == null) ? 0 : releaseDate.hashCode());
		result = prime * result + ((reportedDate == null) ? 0 : reportedDate.hashCode());
		result = prime * result + ((status == null) ? 0 : status.hashCode());
		temp = Double.doubleToLongBits(totalCharge);
		result = prime * result + (int) (temp ^ (temp >>> 32));
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
		if (admitDate == null) {
			if (other.admitDate != null)
				return false;
		} else if (!admitDate.equals(other.admitDate))
			return false;
		if (claimNumber != other.claimNumber)
			return false;
		if (custName == null) {
			if (other.custName != null)
				return false;
		} else if (!custName.equals(other.custName))
			return false;
		if (datePaid == null) {
			if (other.datePaid != null)
				return false;
		} else if (!datePaid.equals(other.datePaid))
			return false;
		if (incurredDate == null) {
			if (other.incurredDate != null)
				return false;
		} else if (!incurredDate.equals(other.incurredDate))
			return false;
		if (Double.doubleToLongBits(postCharge) != Double.doubleToLongBits(other.postCharge))
			return false;
		if (Double.doubleToLongBits(preCharge) != Double.doubleToLongBits(other.preCharge))
			return false;
		if (releaseDate == null) {
			if (other.releaseDate != null)
				return false;
		} else if (!releaseDate.equals(other.releaseDate))
			return false;
		if (reportedDate == null) {
			if (other.reportedDate != null)
				return false;
		} else if (!reportedDate.equals(other.reportedDate))
			return false;
		if (status == null) {
			if (other.status != null)
				return false;
		} else if (!status.equals(other.status))
			return false;
		if (Double.doubleToLongBits(totalCharge) != Double.doubleToLongBits(other.totalCharge))
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