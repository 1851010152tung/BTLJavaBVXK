/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.service;

import com.btl.pojos.Cart;
import java.util.Map;

/**
 *
 * @author Truc Lam
 */
public interface BookingService {
     boolean addBill(Map<Integer, Cart> cart, int id);

    
}