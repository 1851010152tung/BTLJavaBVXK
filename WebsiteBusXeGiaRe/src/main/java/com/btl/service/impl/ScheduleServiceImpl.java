/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.service.impl;

import com.btl.pojos.Schedule;
import com.btl.repository.BusRepository;
import com.btl.repository.ScheduleRepository;
import com.btl.service.ScheduleService;
import com.cloudinary.Cloudinary;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Truc Lam
 */

@Service
public class ScheduleServiceImpl implements ScheduleService{

    @Autowired
    private ScheduleRepository scheduleRepository;


    
    @Override
    public List<Schedule> getSchedules() {
        return this.scheduleRepository.getSchedules();
    }

    @Override
    public boolean addOrUpdate(Schedule schedule) {
        return this.scheduleRepository.addOrUpdate(schedule);
    }

    @Override
    public boolean delete(Schedule schedule) {
        return this.scheduleRepository.delete(schedule);
    }

    @Override
    public Schedule findById(int id) {
        return this.scheduleRepository.findById(id);
    }
    
}
