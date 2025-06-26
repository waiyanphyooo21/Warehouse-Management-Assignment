package com.pearlyadana.dao.impl;

import com.pearlyadana.dao.PurchaseDao;
import com.pearlyadana.model.Purchase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@Repository
public class PurchaseDaoImpl implements PurchaseDao {

    @Autowired
    private DataSource dataSource;

    private Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }

    @Override
    public void save(Purchase purchase) {
        String insertPurchaseSql = "INSERT INTO purchase (date, product_id, qty, price) VALUES (?, ?, ?, ?)";
        String selectStockSql = "SELECT * FROM stock WHERE product_id = ?";
        String insertStockSql = "INSERT INTO stock (product_id, qty, purchase_price, sale_price) VALUES (?, ?, ?, ?)";
        String updateStockSql = "UPDATE stock SET qty = qty + ?, purchase_price = ? WHERE product_id = ?";

        try (Connection con = getConnection()) {
            // 1. Insert purchase
            try (PreparedStatement ps = con.prepareStatement(insertPurchaseSql)) {
                ps.setDate(1, java.sql.Date.valueOf(purchase.getDate()));
                ps.setInt(2, purchase.getProductId());
                ps.setInt(3, purchase.getQty());
                ps.setBigDecimal(4, purchase.getPrice());
                ps.executeUpdate();
            }

            // 2. Check if stock exists
            boolean stockExists = false;
            try (PreparedStatement checkPs = con.prepareStatement(selectStockSql)) {
                checkPs.setInt(1, purchase.getProductId());
                try (ResultSet rs = checkPs.executeQuery()) {
                    if (rs.next()) {
                        stockExists = true;
                    }
                }
            }

            if (stockExists) {
                // 3a. Update stock
                try (PreparedStatement updatePs = con.prepareStatement(updateStockSql)) {
                    updatePs.setInt(1, purchase.getQty());
                    updatePs.setBigDecimal(2, purchase.getPrice());
                    updatePs.setInt(3, purchase.getProductId());
                    updatePs.executeUpdate();
                }
            } else {
                // 3b. Insert new stock
                try (PreparedStatement insertPs = con.prepareStatement(insertStockSql)) {
                    insertPs.setInt(1, purchase.getProductId());
                    insertPs.setInt(2, purchase.getQty());
                    insertPs.setBigDecimal(3, purchase.getPrice());
                    insertPs.setBigDecimal(4, purchase.getPrice()); // initial sale price = purchase price
                    insertPs.executeUpdate();
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Purchase> getAll() {
        List<Purchase> list = new ArrayList<>();
        String sql = "SELECT * FROM purchase ORDER BY id ASC";
        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Purchase p = new Purchase();
                p.setId(rs.getInt("id"));
                p.setDate(rs.getDate("date").toLocalDate());
                p.setProductId(rs.getInt("product_id"));
                p.setQty(rs.getInt("qty"));
                p.setPrice(rs.getBigDecimal("price"));
                list.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public Purchase getById(int id) {
        String sql = "SELECT * FROM purchase WHERE id = ?";
        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Purchase p = new Purchase();
                p.setId(rs.getInt("id"));
                p.setDate(rs.getDate("date").toLocalDate());
                p.setProductId(rs.getInt("product_id"));
                p.setQty(rs.getInt("qty"));
                p.setPrice(rs.getBigDecimal("price"));
                return p;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void update(Purchase purchase) {
        String sql = "UPDATE purchase SET date = ?, product_id = ?, qty = ?, price = ? WHERE id = ?";
        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setDate(1, java.sql.Date.valueOf(purchase.getDate()));
            ps.setInt(2, purchase.getProductId());
            ps.setInt(3, purchase.getQty());
            ps.setBigDecimal(4, purchase.getPrice());
            ps.setInt(5, purchase.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM purchase WHERE id = ?";
        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
