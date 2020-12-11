package com.cognizant.model;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

/**
 * 
 * @author Priyanka Nath
 *
 */
/**
 * 
 * @author SA
 *
 */

@Entity
@Table(name = "help_table")
public class Help {

    @Id
    @Column(name = "request_ID")
    private int requestId;
    @Column(name="issue")
    private String issue;
    @Column(name="description")
    private String description;
    @DateTimeFormat(iso = ISO.DATE)
    @Column(name="date_of_ticket")
    private LocalDate dateOfTicket;
    @Column(name="resolution_by_admin")
    private String resolutionByAdmin;
    @Column(name="cust_name")
    private String custName;

    public int getRequestId() {
        return requestId;
    }

    public void setRequestId(int requestId) {
        this.requestId = requestId;
    }

    public String getIssue() {
        return issue;
    }

    public void setIssue(String issue) {
        this.issue = issue;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDate getDateOfTicket() {
        return dateOfTicket;
    }

    public void setDateOfTicket(LocalDate dateOfTicket) {
        this.dateOfTicket = dateOfTicket;
    }

    public String getResolutionByAdmin() {
        return resolutionByAdmin;
    }

    public void setResolutionByAdmin(String resolutionByAdmin) {
        this.resolutionByAdmin = resolutionByAdmin;
    }

    public String getCustName() {
        return custName;
    }

    public void setCustName(String custName) {
        this.custName = custName;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((custName == null) ? 0 : custName.hashCode());
        result = prime * result + requestId;
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
        Help other = (Help) obj;
        if (custName == null) {
            if (other.custName != null)
                return false;
        } else if (!custName.equals(other.custName))
            return false;
        if (requestId != other.requestId)
            return false;
        return true;
    }

    @Override
    public String toString() {
        return "Help [requestId=" + requestId + ", issue=" + issue + ", description=" + description + ", dateOfTicket="
                + dateOfTicket + ", resolutionByAdmin=" + resolutionByAdmin + ", custName=" + custName + "]";
    }

}
