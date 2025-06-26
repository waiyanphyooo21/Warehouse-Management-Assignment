package com.pearlyadana.dao;

import com.pearlyadana.model.Purchase;
import java.util.List;

public interface PurchaseDao {
    void save(Purchase purchase);
    void update(Purchase purchase);         // ✅ Add this
    void delete(int id);                    // ✅ Add this
    Purchase getById(int id);               // ✅ Add this
    List<Purchase> getAll();
}
