/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.repository.impl;

import com.btl.pojos.Booking;
import com.btl.pojos.BookingDetail;
import com.btl.pojos.Cart;
import com.btl.pojos.Schedule;
import com.btl.repository.BookingRepository;
import com.btl.repository.ScheduleRepository;
import com.btl.repository.UserRepository;
import com.btl.service.ScheduleService;
import com.btl.utils.Utils;
import java.math.BigDecimal;
import java.util.Date;
import java.util.Map;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Asus
 */
@Repository
public class BookingRepositoryImpl implements BookingRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private ScheduleRepository scheduleRepository;
    
    @Override
    //Cập nhật nhiều giao tác và có mối quan hệ cha con 
    @Transactional(propagation = Propagation.REQUIRED)
    public boolean addBill(Map<Integer, Cart> cart,int id) {
      try {  
        Session session = sessionFactory.getObject().getCurrentSession();

        
        Booking booking =  new Booking();
        booking.setUser(this.userRepository.findById(id));
        booking.setBookingDate(new Date());
        
        Map<String, String> totalMoney = Utils.totalMoney(cart);
        booking.setTotal(BigDecimal.valueOf(Long.parseLong(totalMoney.get("total"))));
        
        session.save(booking);
        
        for(Cart c: cart.values()){
            BookingDetail b = new BookingDetail();
            b.setPrice(c.getPrice());
            b.setQuantity(c.getQuantity());
            b.setBooking(booking);
            b.setSchedule(this.scheduleRepository.findById(c.getScheduleId()));
            
            Schedule schedule = this.scheduleRepository.findById(c.getScheduleId());
            schedule.getBus().setSeatNumber(schedule.getBus().getSeatNumber() - c.getQuantity());
            session.save(schedule);
            
            session.save(b);
        }
        
        return true;
        
       } catch (HibernateException ex) {
            ex.printStackTrace();
        }
      return false;
    }
    
}
