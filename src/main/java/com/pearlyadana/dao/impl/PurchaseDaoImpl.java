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
        String sql = "INSERT INTO purchase (date, product_id, qty, price) VALUES (?, ?, ?, ?)";
        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setDate(1, purchase.getDate());
            ps.setInt(2, purchase.getProductId());
            ps.setInt(3, purchase.getQty());
            ps.setBigDecimal(4, purchase.getPrice());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Purchase> getAll() {
        List<Purchase> list = new ArrayList<>();
        String sql = "SELECT * FROM purchase ORDER BY id DESC";
        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Purchase p = new Purchase();
                p.setId(rs.getInt("id"));
                p.setDate(rs.getDate("date"));
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
}
