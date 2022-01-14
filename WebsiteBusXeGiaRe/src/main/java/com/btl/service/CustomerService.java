/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.service;

import java.util.List;

/**
 *
 * @author Truc Lam
 */
public interface CustomerService {
    List<Object[]> listBooking(String ticketName, int page);
    Long quantityBooking();
    List<Object[]> listBookingDetail(int id);
}
