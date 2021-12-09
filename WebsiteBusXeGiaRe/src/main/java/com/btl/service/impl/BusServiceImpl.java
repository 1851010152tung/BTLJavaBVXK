/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.service.impl;

import com.btl.pojos.Bus;
import com.btl.repository.BusRepository;
import com.btl.repository.impl.BusRepositoryImpl;
import com.btl.service.BusService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Truc Lam
 */

@Service
public class BusServiceImpl implements BusService{

    @Autowired
    private BusRepository busRepository;
    @Override
    public List<Bus> getBuses() {
        return this.busRepository.getBuses();
    }
    
    
}
