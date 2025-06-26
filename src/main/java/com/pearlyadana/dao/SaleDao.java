package com.pearlyadana.dao;

import com.pearlyadana.model.Sale;
import java.util.List;

public interface SaleDao {
    void save(Sale sale);
    void update(Sale sale);           // ✅ Add this
    void delete(int id);              // ✅ Add this
    Sale getById(int id);             // ✅ Add this
    List<Sale> getAll();
}
