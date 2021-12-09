/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


package com.btl.pojos;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 *
 * @author ASUS
 */
@Entity
@Table(name = "user")

public class User implements Serializable{
   public static final String ADMIN = "ROLE_ADMIN";
   public static final String USER = "ROLE_USER";
   
   
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private int id;
   @Column(name = "first_name")
   private String firstName;
   @Column(name = "last_name")
   private String lastName;
   private String email;
   private String phone;
   private String username;
   private String password;
   private boolean active;
    @Column(name = "user_role")
   private String userRole;
   
   //Các thuộc tính phải liên kết với một trường trong csdl
   //Tuy nhiên, khi khai báo biến confirmPassword mục tiêu để xác nhận password
   // Phải gắn @Transient để biết đây là trường bình thường, không liên kết với trường nào dưới csdl
   @Transient
   private String confirmPassword;

 
    public int getId() {
        return id;
    }

   
    public void setId(int id) {
        this.id = id;
    }

  
    public String getFirstNameString() {
        return firstName;
    }

   
    public void setFirstNameString(String firstNameString) {
        this.firstName = firstNameString;
    }

    
    public String getLastNameString() {
        return lastName;
    }

   
    public void setLastNameString(String lastNameString) {
        this.lastName = lastNameString;
    }

   
    public String getEmail() {
        return email;
    }

  
    public void setEmail(String email) {
        this.email = email;
    }

   
    public String getPhone() {
        return phone;
    }

    
    public void setPhone(String phone) {
        this.phone = phone;
    }

    
    public String getUsername() {
        return username;
    }

    
     
    public void setUsername(String username) {
        this.username = username;
    }

    
    public String getPassword() {
        return password;
    }

   
    public void setPassword(String password) {
        this.password = password;
    }

    
    public boolean isActive() {
        return active;
    }

   
    public void setActive(boolean active) {
        this.active = active;
    }

    
    public String getUserRole() {
        return userRole;
    }

  
    public void setUserRole(String userRole) {
        this.userRole = userRole;
    }

    /**
     * @return the confirmPassword
     */
    public String getConfirmPassword() {
        return confirmPassword;
    }

    /**
     * @param confirmPassword the confirmPassword to set
     */
    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }
}

