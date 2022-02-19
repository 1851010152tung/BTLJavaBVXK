/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.repository;

import com.btl.pojos.Bus;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Truc Lam
 */
public interface BusRepository {
    List<Bus> getBuses();
    //create
    boolean addOrUpdate(Bus bus);
    //delete
    boolean delete(Bus bus);
    
    //find by id
    Bus findById(int idBus);
    //total item
    long totalItem();
    
    List<Object> getListByCondition(String kw, int page);
    
    List<Object> getListByCondition(String kw, Date fromDate, Date toDate, int page);
    
    List<Object> getListByCondition(String kw, String kw2, Date fromDate, Date toDate, int page);

    List<Object[]> getMostCommentBus(int num);
    
    
}
