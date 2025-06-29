package com.pearlyadana.dao;

import com.pearlyadana.model.Category;
import java.util.List;

public interface CategoryDao {
    Category getById(int id);
    Category getByName(String name);
    List<Category> getAll();
    int save(Category category);
    void update(Category category);
    void delete(int id);
}
