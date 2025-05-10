package com.TheCrownCrest.model;

public class Offer {
    private int id;
    private String offerName;
    private String offerTableType;
    private String startDate;
    private String endDate;
    private int discountPercentage;

    public Offer(int id, String offerName, String offerTableType, String startDate, String endDate, int discountPercentage) {
        this.id = id;
        this.offerName = offerName;
        this.offerTableType = offerTableType;
        this.startDate = startDate;
        this.endDate = endDate;
        this.discountPercentage = discountPercentage;
    }

    // Getters and setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOfferName() {
        return offerName;
    }

    public void setOfferName(String offerName) {
        this.offerName = offerName;
    }

    public String getOfferTableType() {
        return offerTableType;
    }

    public void setOfferTableType(String offerTableType) {
        this.offerTableType = offerTableType;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public int getDiscountPercentage() {
        return discountPercentage;
    }

    public void setDiscountPercentage(int discountPercentage) {
        this.discountPercentage = discountPercentage;
    }
}
