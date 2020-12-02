package com.cognizant.model;

import java.time.LocalDate;

/**
 * 
 * @author SA
 *
 */
public class Payment {

    private int cardNo;
    private String cardHolderName;
    private int cvv;
    private LocalDate expiryDate;
    private String cardType;
    private float availableBalance;
    public int getCardNo() {
        return cardNo;
    }
    public void setCardNo(int cardNo) {
        this.cardNo = cardNo;
    }
    public String getCardHolderName() {
        return cardHolderName;
    }
    public void setCardHolderName(String cardHolderName) {
        this.cardHolderName = cardHolderName;
    }
    public int getCvv() {
        return cvv;
    }
    public void setCvv(int cvv) {
        this.cvv = cvv;
    }
    public LocalDate getExpiryDate() {
        return expiryDate;
    }
    public void setExpiryDate(LocalDate expiryDate) {
        this.expiryDate = expiryDate;
    }
    public String getCardType() {
        return cardType;
    }
    public void setCardType(String cardType) {
        this.cardType = cardType;
    }
    public float getAvailableBalance() {
        return availableBalance;
    }
    public void setAvailableBalance(float availableBalance) {
        this.availableBalance = availableBalance;
    }
    @Override
    public String toString() {
        return "Payment [cardNo=" + cardNo + ", cardHolderName=" + cardHolderName + ", cvv=" + cvv + ", expiryDate="
                + expiryDate + ", cardType=" + cardType + ", availableBalance=" + availableBalance + "]";
    }
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + cardNo;
        result = prime * result + cvv;
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
        Payment other = (Payment) obj;
        if (cardNo != other.cardNo)
            return false;
        if (cvv != other.cvv)
            return false;
        return true;
    }
    
}
