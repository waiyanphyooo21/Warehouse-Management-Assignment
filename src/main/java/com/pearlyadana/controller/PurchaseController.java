//package com.pearlyadana.controller;
//
//import com.pearlyadana.dao.ProductDao;
//import com.pearlyadana.dao.PurchaseDao;
//import com.pearlyadana.model.Product;
//import com.pearlyadana.model.Purchase;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.*;
//
//import java.util.List;
//
//@Controller
//@RequestMapping("/purchase")
//public class PurchaseController {
//
//    @Autowired
//    private PurchaseDao purchaseDao;
//
//    @Autowired
//    private ProductDao productDao;
//
//    @GetMapping("/form")
//    public String showForm(Model model) {
//        model.addAttribute("purchase", new Purchase());
//        model.addAttribute("products", productDao.getAll());
//        return "purchase-form";
//    }
//
//    @PostMapping("/save")
//    public String save(@ModelAttribute("purchase") Purchase purchase) {
//        purchaseDao.save(purchase);
//        return "redirect:/purchase/list";
//    }
//
//    @GetMapping("/list")
//    public String list(Model model) {
//        model.addAttribute("purchases", purchaseDao.getAll());
//        return "purchase-list";
//    }
//}

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

    // ✅ Fix for LocalDate binding
    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(LocalDate.class, new PropertyEditorSupport() {
            @Override
            public void setAsText(String text) {
                setValue(LocalDate.parse(text, DateTimeFormatter.ISO_LOCAL_DATE));
            }
        });
    }

    @GetMapping("/list")
    public String list(Model model) {
        List<Purchase> purchases = purchaseDao.getAll();
        List<Product> products = productDao.getAll();
        model.addAttribute("purchases", purchases);
        model.addAttribute("products", products);
        return "purchase-list";
    }

    @GetMapping("/form")
    public String showForm(Model model) {
        List<Product> products = productDao.getAll();
        model.addAttribute("products", products);
        model.addAttribute("purchase", new Purchase());
        return "purchase-form";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute Purchase purchase) {
        purchaseDao.save(purchase);
        return "redirect:/purchase/list";
    }
}

