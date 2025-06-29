//package com.pearlyadana.model;
//
//public class Product {
//    private int id;
//    private String name;
//    private String code;
//    private int categoryId;
//
//    public Product() {
//        // no-arg constructor (required for Spring/beans)
//    }
//
//    public Product(int id, String name, String code, int categoryId) {
//        this.id = id;
//        this.name = name;
//        this.code = code;
//        this.categoryId = categoryId;
//    }
//
//    // Getters and Setters
//
//    public int getId() {
//        return id;
//    }
//
//    public void setId(int id) {
//        this.id = id;
//    }
//
//    public String getName() {
//        return name;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
//
//    public String getCode() {
//        return code;
//    }
//
//    public void setCode(String code) {
//        this.code = code;
//    }
//
//    public int getCategoryId() {
//        return categoryId;
//    }
//
//    public void setCategoryId(int categoryId) {
//        this.categoryId = categoryId;
//    }
//}

package com.pearlyadana.model;

public class Product {
    private int id;
    private String name;
    private String code;
    private int categoryId;
    private String categoryName;

    public Product() {

    }

    public Product(int id, String name, String code, int categoryId) {
        this.id = id;
        this.name = name;
        this.code = code;
        this.categoryId = categoryId;
    }

    // Getters and Setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }
}
