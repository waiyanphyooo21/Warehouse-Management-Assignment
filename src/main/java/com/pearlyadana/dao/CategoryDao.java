package com.pearlyadana.dao;

import com.pearlyadana.model.Category;
import java.util.List;

public interface CategoryDao {
    Category getById(int id);
    Category getByName(String name); // ✅ Add this
    List<Category> getAll();
    int save(Category category);     // ✅ Needed to return new ID
}
