package com.pearlyadana.dao;

import com.pearlyadana.model.Product;
import java.util.List;

public interface ProductDao {
    void save(Product product);
    void update(Product product);
    void delete(int id);
    Product getById(int id);
    List<Product> getAll();
}

