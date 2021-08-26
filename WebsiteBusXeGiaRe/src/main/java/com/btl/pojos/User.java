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
   private String firstNameString;
    @Column(name = "last_name")
   private String lastNameString;
   private String email;
   private String phone;
   private String username;
   private String password;
   private boolean active;
    @Column(name = "user_role")
   private String userRole;

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
     * @return the firstNameString
     */
    public String getFirstNameString() {
        return firstNameString;
    }

    /**
     * @param firstNameString the firstNameString to set
     */
    public void setFirstNameString(String firstNameString) {
        this.firstNameString = firstNameString;
    }

    /**
     * @return the lastNameString
     */
    public String getLastNameString() {
        return lastNameString;
    }

    /**
     * @param lastNameString the lastNameString to set
     */
    public void setLastNameString(String lastNameString) {
        this.lastNameString = lastNameString;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * @param phone the phone to set
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the active
     */
    public boolean isActive() {
        return active;
    }

    /**
     * @param active the active to set
     */
    public void setActive(boolean active) {
        this.active = active;
    }

    /**
     * @return the userRole
     */
    public String getUserRole() {
        return userRole;
    }

    /**
     * @param userRole the userRole to set
     */
    public void setUserRole(String userRole) {
        this.userRole = userRole;
    }
}
