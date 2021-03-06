/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.service;

import com.btl.pojos.Bus;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Truc Lam
 */
public interface BusService {
    List<Bus> getBuses();
    boolean addOrUpdate(Bus bus);
    //boolean update(Bus bus);
    boolean delete(int id);
    Bus findById(int idBus);
    Long totalItem();
    List<Object> getListByCondition(String kw, int page);
    
    List<Object> getListByCondition(String kw, Date fromDate, Date toDate, int page);

    List<Object> getListByCondition(String kw, String kw2, Date fromDate, Date toDate, int page);

   
}
