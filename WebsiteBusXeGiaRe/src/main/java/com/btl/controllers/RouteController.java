/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.controllers;

import com.btl.pojos.Route;
import com.btl.service.RouteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author Truc Lam
 */

@Controller
public class RouteController {
     
    @Autowired
    private RouteService routeService;
    
    @GetMapping("/admin/routes")
    public String list(Model model)
    {
        model.addAttribute("route", new Route());
        return "route";
    }
    
    //Tính năng upload
    //Khai báo upload controller và thêm chuyến đi
    @PostMapping("/admin/routes")
    public String addRoute(Model model, @ModelAttribute(value = "route") Route route)
    { 
        
        //Trường hợp dữ liệu ổn
        if(this.routeService.addOrUpdate(route) == true)
        {
            return "redirect:/";
        }
        else 
        {
            model.addAttribute("errMsg", "Có lỗi xảy ra");
            return "route";
        }
    }
}
