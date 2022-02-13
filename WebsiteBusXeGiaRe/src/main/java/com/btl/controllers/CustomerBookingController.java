/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.controllers;

import com.btl.service.BusService;
import com.btl.service.CustomerService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Truc Lam
 */

@Controller
public class CustomerBookingController {

    @Autowired
    private BusService busService;
    
       //BOOKING
    @RequestMapping("/admin/data_booking")
    public String indexUpdate(Model model, 
            @RequestParam(required = false) Map<String, String> params)
    {
        String kw = params.getOrDefault("kw", null);
        int page = Integer.parseInt(params.getOrDefault("page", "1")); // nếu có thì lấy biến page còn không thì trả về 1
        
        
        model.addAttribute("buses", this.busService.getState(kw, page));
        model.addAttribute("size", this.busService.getState(kw, page).size());
        model.addAttribute("counter", this.busService.totalItem());

        return "data_booking";
    }
    
    
    
    
}
