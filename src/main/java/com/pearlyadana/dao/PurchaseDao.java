package com.pearlyadana.dao;

import com.pearlyadana.model.Purchase;
import java.util.List;

public interface PurchaseDao {
    void save(Purchase purchase);
    List<Purchase> getAll();
}
