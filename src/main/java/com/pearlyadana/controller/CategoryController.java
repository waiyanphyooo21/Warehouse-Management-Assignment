//package com.pearlyadana.controller;
//
//import com.pearlyadana.dao.CategoryDao;
//import com.pearlyadana.model.Category;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.*;
//
//import java.util.List;
//
//@Controller
//@RequestMapping("/category")
//public class CategoryController {
//
//    @Autowired
//    private CategoryDao categoryDao;
//
//    @GetMapping("/list")
//    public String list(Model model) {
//        List<Category> categories = categoryDao.getAll();
//        model.addAttribute("categories", categories);
//        return "category-list";
//    }
//
//    @GetMapping("/form")
//    public String form(@RequestParam(value = "id", required = false) Integer id, Model model) {
//        Category category = (id != null) ? categoryDao.getById(id) : new Category();
//        model.addAttribute("category", category);
//        return "category-form";
//    }
//
//    @PostMapping("/save")
//    public String save(@RequestParam("id") int id,
//                       @RequestParam("name") String name) {
//        Category category = new Category();
//        category.setId(id);
//        category.setName(name);
//
//        if (id == 0) {
//            categoryDao.save(category);
//        } else {
//            // Optional: you can implement update if needed
//        }
//
//        return "redirect:/category/list";
//    }
//
//    // Optional delete
//    // @GetMapping("/delete")
//    // public String delete(@RequestParam("id") int id) {
//    //     categoryDao.delete(id); // Implement in DAO
//    //     return "redirect:/category/list";
//    // }
//}

package com.pearlyadana.controller;

import com.pearlyadana.dao.CategoryDao;
import com.pearlyadana.model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private CategoryDao categoryDao;

    @GetMapping("/list")
    public String list(Model model) {
        List<Category> categories = categoryDao.getAll();
        model.addAttribute("categories", categories);
        return "category-list";
    }

    @GetMapping("/form")
    public String form(@RequestParam(value = "id", required = false) Integer id, Model model) {
        Category category = (id != null) ? categoryDao.getById(id) : new Category();
        model.addAttribute("category", category);
        return "category-form";
    }

    @PostMapping("/save")
    public String save(@RequestParam("id") int id,
                       @RequestParam("name") String name) {
        Category category = new Category();
        category.setId(id);
        category.setName(name);

        if (id == 0) {
            categoryDao.save(category);
        } else {
            categoryDao.update(category);
        }

        return "redirect:/category/list";
    }

    @GetMapping("/delete")
    public String delete(@RequestParam("id") int id) {
        categoryDao.delete(id);
        return "redirect:/category/list";
    }
}
