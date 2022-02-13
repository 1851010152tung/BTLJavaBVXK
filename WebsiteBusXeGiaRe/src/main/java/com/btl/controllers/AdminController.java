/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.controllers;

import com.btl.service.BusService;
import com.btl.service.CategoryBusService;
import com.btl.service.EmployeeService;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author ASUS-LAPTOP
 */
@Controller
//@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private BusService busService;
    @Autowired
    private CategoryBusService categoryBusSevice;
  
    @Autowired
    private EmployeeService employeeService;
    
    
//    @GetMapping("/admin/category-state")
//    public String cateState(Model model){
//        model.addAttribute("bus",this.busService.getBuses());
//        model.addAttribute("categorybus",this.categoryBusSevice.getCategoryBuses());
////        model.addAttribute("cateState",this.stateService.cateState());
//        return "category-state";
//    }
    
    //EDIT BUS
    @RequestMapping("/admin/category-state")
    public String indexUpdate(Model model, 
            @RequestParam(required = false) Map<String, String> params)
    {
        String kw = params.getOrDefault("kw", null);
        int page = Integer.parseInt(params.getOrDefault("page", "1")); // nếu có thì lấy biến page còn không thì trả về 1
        
        
        model.addAttribute("buses", this.busService.getState(kw, page));
        model.addAttribute("size", this.busService.getState(kw, page).size());

        return "category-state";
    }
    
    @GetMapping("/admin/product-stats")
    public String productStats(Model model, @RequestParam(required = false) Map<String, String> params) {
        SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
        String kw = params.getOrDefault("kw", null);
        Date fromDate = null, toDate =null;
        try {
            String from = params.getOrDefault("fromDate", null);
            if(from != null)
                fromDate = f.parse(from);
            String to = params.getOrDefault("toDate", null);
            if(to != null)
                toDate = f.parse(to);
        } catch (Exception e) {
            e.printStackTrace();
        }

        model.addAttribute("productStats",this.busService.ProductStats(kw, fromDate,toDate));
        return "product-stats";
    }
    @GetMapping("/admin/product-stats-month")
    public String productStatsMonth(Model model, @RequestParam(required = false) Map<String, String> params){
        SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
        String kw = params.getOrDefault("kw", null);
        Date fromDate = null, toDate =null;
        try {
            String from = params.getOrDefault("fromDate", null);
            if(from != null)
                fromDate = f.parse(from);
            String to = params.getOrDefault("toDate", null);
            if(to != null)
                toDate = f.parse(to);
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.addAttribute("productStatsMonth",this.busService.ProductStatsMonth(kw, fromDate,toDate));

        return "product-stats-month";
    }
    
}
