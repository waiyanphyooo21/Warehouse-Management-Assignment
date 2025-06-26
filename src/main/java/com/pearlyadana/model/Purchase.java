//package com.pearlyadana.model;
//
//import java.math.BigDecimal;
//import java.sql.Date;
//
//public class Purchase {
//    private int id;
//    private Date date;
//    private int productId;
//    private int qty;
//    private BigDecimal price;
//
//    // Getters and setters
//    public int getId() { return id; }
//    public void setId(int id) { this.id = id; }
//
//    public Date getDate() { return date; }
//    public void setDate(Date date) { this.date = date; }
//
//    public int getProductId() { return productId; }
//    public void setProductId(int productId) { this.productId = productId; }
//
//    public int getQty() { return qty; }
//    public void setQty(int qty) { this.qty = qty; }
//
//    public BigDecimal getPrice() { return price; }
//    public void setPrice(BigDecimal price) { this.price = price; }
//}

package com.pearlyadana.model;

import java.math.BigDecimal;
import java.time.LocalDate;

public class Purchase {
    private int id;
    private LocalDate date;
    private int productId;
    private int qty;
    private BigDecimal price;

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }
}
