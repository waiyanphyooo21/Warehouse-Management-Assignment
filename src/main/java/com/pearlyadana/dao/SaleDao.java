package com.pearlyadana.dao;

import com.pearlyadana.model.Sale;
import java.util.List;

public interface SaleDao {
    void save(Sale sale);
    List<Sale> getAll();
}
