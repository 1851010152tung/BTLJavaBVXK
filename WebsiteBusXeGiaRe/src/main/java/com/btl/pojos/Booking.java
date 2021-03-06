/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.pojos;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Truc Lam
 */

@Entity
@Table(name = "booking")
public class Booking implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private BigDecimal total;
    @Column(name = "booking_date")
    private Date bookingDate;

    
    //NguoiDung
    @ManyToOne//mac dinh la eager join vao lay het
    //lazy khi nao goi thi moi join 
    @JoinColumn(name = "id_user")
    private User user;
    
    @ManyToOne
    @JoinColumn(name = "id_customer")
    private Customer customer;
    
    
    
    //ChiTietHoaDon
    @OneToMany(mappedBy = "booking")//gắn với thuộc tính trong class bên kết nối
    @JsonIgnore// k lay khi truyenlen Json
    private List<BookingDetail> bookingDetails;

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
     * @return the total
     */
    public BigDecimal getTotal() {
        return total;
    }

    /**
     * @param total the total to set
     */
    public void setTotal(BigDecimal total) {
        this.total = total;
    }

    /**
     * @return the bookingDate
     */
    public Date getBookingDate() {
        return bookingDate;
    }

    /**
     * @param bookingDate the bookingDate to set
     */
    public void setBookingDate(Date bookingDate) {
        this.bookingDate = bookingDate;
    }

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

    /**
     * @return the bookingDetails
     */
    public List<BookingDetail> getBookingDetails() {
        return bookingDetails;
    }

    /**
     * @param bookingDetails the bookingDetails to set
     */
    public void setBookingDetails(List<BookingDetail> bookingDetails) {
        this.bookingDetails = bookingDetails;
    }

    /**
     * @return the customer
     */
    public Customer getCustomer() {
        return customer;
    }

    /**
     * @param customer the customer to set
     */
    public void setCustomer(Customer customer) {
        this.customer = customer;
    }
    
    
}
