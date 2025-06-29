package com.pearlyadana.dao;

import com.pearlyadana.model.Sale;
import java.util.List;

public interface SaleDao {
    void save(Sale sale);
    void update(Sale sale);
    void delete(int id);
    Sale getById(int id);
    List<Sale> getAll();
}
