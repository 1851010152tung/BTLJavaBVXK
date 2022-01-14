/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.service.impl;

import com.btl.pojos.Cart;
import com.btl.repository.BookingRepository;
import com.btl.service.BookingService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Asus
 */
@Service
public class BookingServiceImpl implements BookingService{

    @Autowired
    private BookingRepository bookingRepository;
    
    @Override
    public boolean addBill(Map<Integer, Cart> cart, int id) {
        if(cart !=null)
            return this.bookingRepository.addBill(cart, id);
        return false;
    }
    
}
