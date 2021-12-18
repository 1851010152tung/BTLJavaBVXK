/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.controllers;

import com.btl.pojos.Bus;
import com.btl.service.BusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author Truc Lam
 */
@Controller
@ControllerAdvice
public class BusController {
    
    @Autowired
    private BusService busService;
    
    @GetMapping("/admin/buses")
    public String list(Model model)
    {
        model.addAttribute("bus", new Bus());
        return "bus";
    }
    
    //Tính năng upload
    //Khai báo upload controller và thêm chuyến xe
    @PostMapping("/admin/buses")
    public String addBus(Model model, @ModelAttribute(value = "bus") Bus bus)
    { 
        
        //Trường hợp dữ liệu ổn
        if(this.busService.addOrUpdate(bus) == true)
        {
            return "redirect:/";
        }
        else 
        {
            model.addAttribute("errMsg", "Có lỗi xảy ra");
        //Khi upload thất bại vẫn ở lại trang bus.
            return "bus";
        }
    }
}
