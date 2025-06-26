package com.pearlyadana.controller;

import com.pearlyadana.dao.ProductDao;
import com.pearlyadana.dao.PurchaseDao;
import com.pearlyadana.model.Product;
import com.pearlyadana.model.Purchase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import java.beans.PropertyEditorSupport;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Controller
@RequestMapping("/purchase")
public class PurchaseController {

    @Autowired
    private PurchaseDao purchaseDao;

    @Autowired
    private ProductDao productDao;

    // ✅ Handle LocalDate binding
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(LocalDate.class, new PropertyEditorSupport() {
            @Override
            public void setAsText(String text) {
                setValue(LocalDate.parse(text, DateTimeFormatter.ISO_LOCAL_DATE));
            }
        });
    }

    // ✅ Show list
    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("purchases", purchaseDao.getAll());
        model.addAttribute("products", productDao.getAll());
        return "purchase-list";
    }

    // ✅ Show empty form for new
    @GetMapping("/form")
    public String showForm(@RequestParam(value = "id", required = false) Integer id, Model model) {
        Purchase purchase = (id != null) ? purchaseDao.getById(id) : new Purchase();
        model.addAttribute("purchase", purchase);
        model.addAttribute("products", productDao.getAll());
        return "purchase-form";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute Purchase purchase) {
        if (purchase.getId() == 0) {
            purchaseDao.save(purchase);
        } else {
            purchaseDao.update(purchase); // ✅ update instead of insert
        }
        return "redirect:/purchase/list";
    }


    // ✅ Delete purchase
    @GetMapping("/delete")
    public String delete(@RequestParam("id") int id) {
        purchaseDao.delete(id); // 🗑 Implemented in DAO
        return "redirect:/purchase/list";
    }
}
