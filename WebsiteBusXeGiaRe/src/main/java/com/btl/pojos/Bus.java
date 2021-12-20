/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.pojos;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.Transient;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Truc Lam
 */

@Entity
@Table(name = "bus")
public class Bus implements Serializable{

    /**
     * @return the routes
     */
    public List<Route> getRoutes() {
        return routes;
    }

    /**
     * @param routes the routes to set
     */
    public void setRoutes(List<Route> routes) {
        this.routes = routes;
    }

    public static final String SEAT = "SEAT_BUS";
    public static final String SLEEPER = "SLEEPER_BUS";
    public static final String DOUBLE_SLEEPER = "DOUBLE_SLEEPER_BUS";
    public static final String VIP_SINGLE_ROOM = "VIP_SINGLE_ROOM_BUS";
    public static final String VIP_DOUBLE_ROOM = "VIP_DOUBLE_ROOM_BUS";
    public static final String VIP_SEAT = "VIP_SEAT_BUS";
            
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_bus")
    private int idBus;
    
    @Column(name = "number_plate")
    private String numberPlate;
    
    @Column(name = "bus_name")
    private String busName;
    
    
    
    private String manufacturer;
    
    @Column (name = "seat_number")
    private int seatNumber;
    
    @Column(name = "created_date")
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date createdDate;
    
    private String title;
    private String description;
    private String image;
    private boolean active;

    //Không ứng với một cột của bảng csdl nào thì gắn @Transient
    @Transient
    private MultipartFile file;
    
    //Cau hinh khoa ngoai
    @ManyToOne(fetch = FetchType.EAGER) //nếu để trống thì mặc định của manytoone là EAGER: lấy batng product và cate
                                      //nếu ko cần lấy cate, chỉ lấy product thì xài LAZY, hiệu năng tốt hơn
    @JoinColumn(name = "id_bus_type")
    private CategoryBus categoryBus;
    

    @OneToMany(mappedBy = "bus")
    private List<Route> routes;
    
    @OneToMany(mappedBy = "bus")
    private List<Schedule> schedules;

    /**
     * @return the idBus
     */
    public int getIdBus() {
        return idBus;
    }

    /**
     * @param idBus the idBus to set
     */
    public void setIdBus(int idBus) {
        this.idBus = idBus;
    }

    /**
     * @return the numberPlate
     */
    public String getNumberPlate() {
        return numberPlate;
    }

    /**
     * @param numberPlate the numberPlate to set
     */
    public void setNumberPlate(String numberPlate) {
        this.numberPlate = numberPlate;
    }

    /**
     * @return the busName
     */
    public String getBusName() {
        return busName;
    }

    /**
     * @param busName the busName to set
     */
    public void setBusName(String busName) {
        this.busName = busName;
    }


    /**
     * @return the manufacturer
     */
    public String getManufacturer() {
        return manufacturer;
    }

    /**
     * @param manufacturer the manufacturer to set
     */
    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    /**
     * @return the seatNumber
     */
    public int getSeatNumber() {
        return seatNumber;
    }

    /**
     * @param seatNumber the seatNumber to set
     */
    public void setSeatNumber(int seatNumber) {
        this.seatNumber = seatNumber;
    }

    /**
     * @return the createdDate
     */
    public Date getCreatedDate() {
        return createdDate;
    }

    /**
     * @param createdDate the createdDate to set
     */
    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
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
     * @return the categoryBus
     */
    public CategoryBus getCategoryBus() {
        return categoryBus;
    }

    /**
     * @param categoryBus the categoryBus to set
     */
    public void setCategoryBus(CategoryBus categoryBus) {
        this.categoryBus = categoryBus;
    }

    /**
     * @return the schedules
     */
    public List<Schedule> getSchedules() {
        return schedules;
    }

    /**
     * @param schedules the schedules to set
     */
    public void setSchedules(List<Schedule> schedules) {
        this.schedules = schedules;
    }
    
   
}
