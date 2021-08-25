/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.pojos;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author ASUS
 */
@Entity
@Table(name = "category") //category la ten bang cua csdl 
public class Category implements Serializable{
    @Id //khoa chinh
    @GeneratedValue(strategy = GenerationType.IDENTITY) // khoa chinh tu tang ne sd identity
    //@Column(name = "id") //id la ten cot trong bang category
    private int id;
    
    @Column(name = "name", length = 100, nullable = false) //neu ten cot va ten bien trung nhau co the bo dong nay. vd sẽ bỏ phần id và des
    private String name;
    
    //@Column(name = "description")
    private String description;
    
    //Demo oneToMany
    @OneToMany(mappedBy = "category") //nếu để trống thì mặc định của OneToMany là LAZY
    private List<Product> products;

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the products
     */
    public List<Product> getProducts() {
        return products;
    }

    /**
     * @param products the products to set
     */
    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
