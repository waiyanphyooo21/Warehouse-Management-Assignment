package com.pearlyadana.controller;

import com.pearlyadana.dao.CategoryDao;
import com.pearlyadana.dao.ProductDao;
import com.pearlyadana.model.Category;
import com.pearlyadana.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductDao productDao;

    @Autowired
    private CategoryDao categoryDao;

    @GetMapping("/list")
    public String list(Model model) {
        List<Product> products = productDao.getAll();
        List<Category> categories = categoryDao.getAll();
        model.addAttribute("products", products);
        model.addAttribute("categories", categories);
        return "product-list";
    }

    @GetMapping("/form")
    public String showForm(@RequestParam(value = "id", required = false) Integer id, Model model) {
        Product product = (id != null) ? productDao.getById(id) : new Product();

        String categoryName = "";
        if (product.getCategoryId() != 0) {
            Category category = categoryDao.getById(product.getCategoryId());
            if (category != null) {
                categoryName = category.getName();
            }
        }

        model.addAttribute("product", product);
        model.addAttribute("categoryName", categoryName);
        return "product-form";
    }

//    @PostMapping("/save")
//    public String save(@RequestParam("name") String name,
//                       @RequestParam("code") String code,
//                       @RequestParam("categoryName") String categoryName,
//                       @RequestParam("id") int id) {
//
//        Category category = categoryDao.getByName(categoryName);
//        if (category == null) {
//            // Auto-create category if it doesn't exist
//            category = new Category();
//            category.setName(categoryName);
//            int newId = categoryDao.save(category);
//            category.setId(newId);
//        }
//
//        Product product = new Product(id, name, code, category.getId());
//
//        if (product.getId() == 0) {
//            productDao.save(product);
//        } else {
//            productDao.update(product);
//        }
//
//        return "redirect:/product/list";
//    }
@PostMapping("/save")
public String save(@RequestParam("name") String name,
                   @RequestParam("code") String code,
                   @RequestParam("categoryName") String categoryName,
                   @RequestParam("id") int id,
                   Model model) {

    // Server-side validation: check for empty fields
    if (name == null || name.trim().isEmpty() ||
            code == null || code.trim().isEmpty() ||
            categoryName == null || categoryName.trim().isEmpty()) {

        Product product = new Product();
        product.setId(id);
        product.setName(name);
        product.setCode(code);

        model.addAttribute("product", product);
        model.addAttribute("categoryName", categoryName);
        model.addAttribute("error", "All fields are required.");
        return "product-form";
    }

    // Ensure category exists
    Category category = categoryDao.getByName(categoryName);
    if (category == null) {
        category = new Category();
        category.setName(categoryName);
        int newId = categoryDao.save(category);
        category.setId(newId);
    }

    // Save or update product
    Product product = new Product(id, name, code, category.getId());

    if (id == 0) {
        productDao.save(product);
    } else {
        productDao.update(product);
    }

    return "redirect:/product/list";
}


    @GetMapping("/delete")
    public String delete(@RequestParam("id") int id) {
        productDao.delete(id);
        return "redirect:/product/list";
    }
}
