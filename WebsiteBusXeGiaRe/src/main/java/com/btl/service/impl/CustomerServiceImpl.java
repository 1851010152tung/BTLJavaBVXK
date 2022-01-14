/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.service.impl;

import com.btl.repository.CustomerRepository;
import com.btl.service.CustomerService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Truc Lam
 */
@Service
public class CustomerServiceImpl implements CustomerService{

    @Autowired
    private CustomerRepository customerRepository;
    
    @Override
    public List<Object[]> listBooking(String ticketName, int page) {
        return this.customerRepository.listBooking(ticketName, page);
    }

    @Override
    public Long quantityBooking() {
        return this.customerRepository.quantityBooking();
    }

    @Override
    public List<Object[]> listBookingDetail(int id) {
        return this.customerRepository.listBookingDetail(id);
    }
    
}
