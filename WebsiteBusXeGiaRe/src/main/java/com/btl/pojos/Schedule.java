/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.pojos;

import java.io.Serializable;
import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;

/**
 *
 * @author Truc Lam
 */

@Entity
@Table(name = "schedule")
public class Schedule implements Serializable{
    
    @Id
    @Column(name = "id_schedule")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    @Column(name = "departure_date")
    //@Temporal (javax.persistence.TemporalType.TIMESTAMP)
    private Date departureDate;        
    
    @Column(name = "destination_date")
    //@Temporal (javax.persistence.TemporalType.TIMESTAMP)
    private Date destinationDate;
    
    @Column(name = "departure_time")
    private String departureTime;
    
    @Column(name = "destination_time")
    private String destinationTime;
    
    @ManyToOne(fetch = FetchType.EAGER) 
    @JoinColumn(name = "id_route")
    private Route route;
    

    
    
    
    


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
     * @return the departureDate
     */
    public Date getDepartureDate() {
        return departureDate;
    }

    /**
     * @param departureDate the departureDate to set
     */
    public void setDepartureDate(Date departureDate) {
        this.departureDate = departureDate;
    }

    /**
     * @return the destinationDate
     */
    public Date getDestinationDate() {
        return destinationDate;
    }

    /**
     * @param destinationDate the destinationDate to set
     */
    public void setDestinationDate(Date destinationDate) {
        this.destinationDate = destinationDate;
    }

    /**
     * @return the route
     */
    public Route getRoute() {
        return route;
    }

    /**
     * @param route the route to set
     */
    public void setRoute(Route route) {
        this.route = route;
    }

    /**
     * @return the departureTime
     */
    public String getDepartureTime() {
        return departureTime;
    }

    /**
     * @param departureTime the departureTime to set
     */
    public void setDepartureTime(String departureTime) {
        this.departureTime = departureTime;
    }

    /**
     * @return the destinationTimeString
     */
    public String getDestinationTime() {
        return destinationTime;
    }

    /**
     * @param destinationTime the destinationTimeString to set
     */
    public void setDestinationTime(String destinationTime) {
        this.destinationTime = destinationTime;
    }


    
    
}
