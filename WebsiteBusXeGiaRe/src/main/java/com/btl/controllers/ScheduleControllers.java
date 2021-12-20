/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.controllers;

import com.btl.pojos.Bus;
import com.btl.pojos.Schedule;
import com.btl.service.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Truc Lam
 */
@Controller
@ControllerAdvice
public class ScheduleControllers {
    
    @Autowired
    private ScheduleService scheduleService;
    
    @GetMapping("/admin/schedules")
    public String list(Model model)
    {
        model.addAttribute("schedule", new Schedule());
        return "schedule";
    }
    
    //Tính năng upload
    //Khai báo upload controller và thêm chuyến xe
    @PostMapping("/admin/schedules")
    public String add(Model model, @ModelAttribute(value = "schedule") Schedule schedule)
    { 
        
        //Trường hợp dữ liệu ổn
        if(this.scheduleService.addOrUpdate(schedule) == true)
        {
            return "redirect:/";
        }
        else 
        {
            model.addAttribute("errMsg", "Có lỗi xảy ra");
        //Khi upload thất bại vẫn ở lại trang bus.
        }
                    return "schedule";

    }
    
    
    //EDIT BUS
    @RequestMapping("/admin/data_schedules")
    public String indexUpdate(Model model)
    {
        model.addAttribute("schedules", this.scheduleService.getSchedules());
        return "data_schedule";
    }
    
     @PostMapping("/admin/data_schedules/update")
    public String Update(Model model, @ModelAttribute(value = "schedule") Schedule schedule)
    { 
        
        //Trường hợp dữ liệu ổn
        if(this.scheduleService.addOrUpdate(schedule) == true)
        {
            return "redirect:/";
        }
        else 
        {
            model.addAttribute("errMsg", "Có lỗi xảy ra");
        //Khi upload thất bại vẫn ở lại trang bus.
        }
                    return "update_schedule";

    }
    
    
    @GetMapping("/admin/data_schedules/update")
    public String listEdit(Model model,
            @RequestParam(name ="id", defaultValue ="0") int id)
    {
        if(id > 0)
            model.addAttribute("schedule", this.scheduleService.findById(id));
        else
            model.addAttribute("schedule", new Schedule());
        return "update_schedule";
    }
    
    
    
    
    
    
    
}
