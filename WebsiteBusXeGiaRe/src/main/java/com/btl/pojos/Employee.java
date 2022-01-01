/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.pojos;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.Transient;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Truc Lam
 */


@Entity
@Table(name = "employee")
public class Employee implements Serializable{

    /**
     * @return the user
     */
    public User getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(User user) {
        this.user = user;
    }
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_employee")
    private int idEmployee;
    
    @Column(name = "first_name")
    private String firstName;
    
    @Column (name = "last_name")
    private String lastName;    
    private String phone;    
    private String username;    
    private String password;    
    private String email;    
    private String gender;
        
    //@DateTimeFormat(pattern = "dd-MM-yyyy")
    //@DateTimeFormat(pattern = "dd-MM-yyyy")
//    @Temporal(javax.persistence.TemporalType.DATE)
    private Date birthday;
    
    private String position; 
    private String image;

    //Không ứng với một cột của bảng csdl nào thì gắn @Transient
    @Transient
    private MultipartFile file;
    
    
    @OneToMany(mappedBy = "employee",cascade = {CascadeType.REMOVE},orphanRemoval = true )
    private List<Bus> buses ;
    
    @OneToOne(fetch =FetchType.LAZY)
    @JoinColumn(name = "id_user")
    private User user;
    

    /**
     * @return the idEmployee
     */
    public int getIdEmployee() {
        return idEmployee;
    }

    /**
     * @param idEmployee the idEmployee to set
     */
    public void setIdEmployee(int idEmployee) {
        this.idEmployee = idEmployee;
    }

    /**
     * @return the firstName
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * @return the lastName
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
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
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

   
    /**
     * @return the position
     */
    public String getPosition() {
        return position;
    }

    /**
     * @param position the position to set
     */
    public void setPosition(String position) {
        this.position = position;
    }

    /**
     * @return the image
     */
    public String getImage() {
        return image;
    }

    /**
     * @param image the image to set
     */
    public void setImage(String image) {
        this.image = image;
    }

    /**
     * @return the file
     */
    public MultipartFile getFile() {
        return file;
    }

    /**
     * @param file the file to set
     */
    public void setFile(MultipartFile file) {
        this.file = file;
    }

    /**
     * @return the birthday
     */
    public Date getBirthday() {
        return birthday;
    }

    /**
     * @param birthday the birthday to set
     */
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    /**
     * @return the buses
     */
    public List<Bus> getBuses() {
        return buses;
    }

    /**
     * @param buses the buses to set
     */
    public void setBuses(List<Bus> buses) {
        this.buses = buses;
    }

 
    
}
