/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.repository;

import com.btl.pojos.Cart;
import java.util.Map;

/**
 *
 * @author Asus
 */
public interface BookingRepository {
    boolean addBill(Map<Integer, Cart> cart, int id);
}
