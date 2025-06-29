package com.pearlyadana.dao;

import com.pearlyadana.model.Purchase;
import java.util.List;

public interface PurchaseDao {
    void save(Purchase purchase);
    void update(Purchase purchase);
    void delete(int id);
    Purchase getById(int id);
    List<Purchase> getAll();
}
