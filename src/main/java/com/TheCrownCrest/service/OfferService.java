package com.TheCrownCrest.service;

import com.TheCrownCrest.model.Offer;
import com.TheCrownCrest.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OfferService {

    // Create Offer
    public boolean createOffer(Offer offer) {
        String query = "INSERT INTO offers (OfferName, OfferTablesType, StartDate, EndDate, DiscountPercentage) VALUES (?, ?, ?, ?, ?)";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, offer.getOfferName());
            stmt.setString(2, offer.getOfferTableType());
            stmt.setString(3, offer.getStartDate());
            stmt.setString(4, offer.getEndDate());
            stmt.setInt(5, offer.getDiscountPercentage());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Get Offer by ID
    public Offer getOffer(int id) {
        String query = "SELECT * FROM offers WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return new Offer(
                        rs.getInt("id"),
                        rs.getString("OfferName"),
                        rs.getString("OfferTablesType"),
                        rs.getString("StartDate"),
                        rs.getString("EndDate"),
                        rs.getInt("DiscountPercentage")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    // Get All Offers
    public List<Offer> getAllOffers() {
        List<Offer> offers = new ArrayList<>();
        String query = "SELECT * FROM offers";
        try (Connection connection = DBConnection.getConnection();
             Statement stmt = connection.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {
            while (rs.next()) {
                offers.add(new Offer(
                        rs.getInt("id"),
                        rs.getString("OfferName"),
                        rs.getString("OfferTablesType"),
                        rs.getString("StartDate"),
                        rs.getString("EndDate"),
                        rs.getInt("DiscountPercentage")
                ));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return offers;
    }

    // Update Offer
    public boolean updateOffer(Offer offer) {
        String query = "UPDATE offers SET OfferName = ?, OfferTablesType = ?, StartDate = ?, EndDate = ?, DiscountPercentage = ? WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, offer.getOfferName());
            stmt.setString(2, offer.getOfferTableType());
            stmt.setString(3, offer.getStartDate());
            stmt.setString(4, offer.getEndDate());
            stmt.setInt(5, offer.getDiscountPercentage());
            stmt.setInt(6, offer.getId());
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Delete Offer
    public boolean deleteOffer(int id) {
        String query = "DELETE FROM offers WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setInt(1, id);
            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
