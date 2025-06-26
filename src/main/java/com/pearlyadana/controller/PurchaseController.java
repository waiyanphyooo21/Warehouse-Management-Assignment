package com.pearlyadana.controller;

import com.pearlyadana.dao.ProductDao;
import com.pearlyadana.dao.PurchaseDao;
import com.pearlyadana.model.Product;
import com.pearlyadana.model.Purchase;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/purchase")
public class PurchaseController {

    @Autowired
    private PurchaseDao purchaseDao;

    @Autowired
    private ProductDao productDao;

    @GetMapping("/form")
    public String showForm(Model model) {
        model.addAttribute("purchase", new Purchase());
        model.addAttribute("products", productDao.getAll());
        return "purchase-form";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute("purchase") Purchase purchase) {
        purchaseDao.save(purchase);
        return "redirect:/purchase/list";
    }

    @GetMapping("/list")
    public String list(Model model) {
        model.addAttribute("purchases", purchaseDao.getAll());
        return "purchase-list";
    }
}
