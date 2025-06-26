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
        String insertSaleSql = "INSERT INTO sale (product_id, qty, sale_price) VALUES (?, ?, ?)";
        String updateStockSql = "UPDATE stock SET qty = qty - ? WHERE product_id = ?";

        try (Connection con = getConnection()) {
            // 1. Insert into sale table
            try (PreparedStatement ps = con.prepareStatement(insertSaleSql)) {
                ps.setInt(1, sale.getProductId());
                ps.setInt(2, sale.getQty());
                ps.setBigDecimal(3, sale.getSalePrice());
                ps.executeUpdate();
            }

            // 2. Update stock table
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
        String sql = "SELECT * FROM sale ORDER BY id DESC";

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
}
