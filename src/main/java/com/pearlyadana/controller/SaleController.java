package com.pearlyadana.controller;

import com.pearlyadana.dao.ProductDao;
import com.pearlyadana.dao.SaleDao;
import com.pearlyadana.model.Product;
import com.pearlyadana.model.Sale;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/sale")
public class SaleController {

    @Autowired
    private SaleDao saleDao;

    @Autowired
    private ProductDao productDao;

    @GetMapping("/list")
    public String list(Model model) {
        List<Sale> sales = saleDao.getAll();
        List<Product> products = productDao.getAll();
        model.addAttribute("sales", sales);
        model.addAttribute("products", products);
        return "sale-list";
    }

    @GetMapping("/form")
    public String showForm(Model model) {
        model.addAttribute("sale", new Sale());
        model.addAttribute("products", productDao.getAll());
        return "sale-form";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute Sale sale) {
        saleDao.save(sale);
        return "redirect:/sale/list";
    }
}
