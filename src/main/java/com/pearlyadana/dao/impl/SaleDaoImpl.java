package com.pearlyadana.dao.impl;

import com.pearlyadana.dao.SaleDao;
import com.pearlyadana.model.Sale;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@Repository
public class SaleDaoImpl implements SaleDao {

    @Autowired
    private DataSource dataSource;

    private Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }

    @Override
    public void save(Sale sale) {
        String insertSql = "INSERT INTO sale (product_id, qty, sale_price) VALUES (?, ?, ?)";
        String updateStockSql = "UPDATE stock SET qty = qty - ? WHERE product_id = ?";

        try (Connection con = getConnection()) {
            try (PreparedStatement ps = con.prepareStatement(insertSql)) {
                ps.setInt(1, sale.getProductId());
                ps.setInt(2, sale.getQty());
                ps.setBigDecimal(3, sale.getSalePrice());
                ps.executeUpdate();
            }

            try (PreparedStatement ps = con.prepareStatement(updateStockSql)) {
                ps.setInt(1, sale.getQty());
                ps.setInt(2, sale.getProductId());
                ps.executeUpdate();
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Sale> getAll() {
        List<Sale> list = new ArrayList<>();
        String sql = "SELECT * FROM sale ORDER BY id ASC";

        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                Sale s = new Sale();
                s.setId(rs.getInt("id"));
                s.setProductId(rs.getInt("product_id"));
                s.setQty(rs.getInt("qty"));
                s.setSalePrice(rs.getBigDecimal("sale_price"));
                list.add(s);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public Sale getById(int id) {
        String sql = "SELECT * FROM sale WHERE id = ?";
        try (Connection con = getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Sale s = new Sale();
                s.setId(rs.getInt("id"));
                s.setProductId(rs.getInt("product_id"));
                s.setQty(rs.getInt("qty"));
                s.setSalePrice(rs.getBigDecimal("sale_price"));
                return s;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public void update(Sale sale) {
        // First, get the old sale to calculate the difference
        Sale oldSale = getById(sale.getId());
        if (oldSale == null) return;

        String updateSaleSql = "UPDATE sale SET product_id = ?, qty = ?, sale_price = ? WHERE id = ?";
        String restoreStockSql = "UPDATE stock SET qty = qty + ? WHERE product_id = ?";
        String applyStockSql = "UPDATE stock SET qty = qty - ? WHERE product_id = ?";

        try (Connection con = getConnection()) {
            // Restore previous qty to stock
            try (PreparedStatement ps = con.prepareStatement(restoreStockSql)) {
                ps.setInt(1, oldSale.getQty());
                ps.setInt(2, oldSale.getProductId());
                ps.executeUpdate();
            }

            // Update the sale record
            try (PreparedStatement ps = con.prepareStatement(updateSaleSql)) {
                ps.setInt(1, sale.getProductId());
                ps.setInt(2, sale.getQty());
                ps.setBigDecimal(3, sale.getSalePrice());
                ps.setInt(4, sale.getId());
                ps.executeUpdate();
            }

            // Apply new qty to stock
            try (PreparedStatement ps = con.prepareStatement(applyStockSql)) {
                ps.setInt(1, sale.getQty());
                ps.setInt(2, sale.getProductId());
                ps.executeUpdate();
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void delete(int id) {
        Sale sale = getById(id);
        if (sale == null) return;

        String deleteSql = "DELETE FROM sale WHERE id = ?";
        String restoreStockSql = "UPDATE stock SET qty = qty + ? WHERE product_id = ?";

        try (Connection con = getConnection()) {
            // Restore stock before deleting
            try (PreparedStatement ps = con.prepareStatement(restoreStockSql)) {
                ps.setInt(1, sale.getQty());
                ps.setInt(2, sale.getProductId());
                ps.executeUpdate();
            }

            // Delete sale record
            try (PreparedStatement ps = con.prepareStatement(deleteSql)) {
                ps.setInt(1, id);
                ps.executeUpdate();
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
