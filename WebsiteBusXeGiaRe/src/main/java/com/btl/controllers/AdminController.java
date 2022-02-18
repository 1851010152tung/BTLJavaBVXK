/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.btl.controllers;

import com.btl.repository.StatisticRepository;
import com.btl.service.BusService;
import com.btl.service.CategoryBusService;
import com.btl.service.EmployeeService;
import com.btl.service.StatisticService;
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
    
    @Autowired
    private StatisticService statisticService;
    
    
    
    //EDIT BUS
    @RequestMapping("/admin/category-statistic")
    public String indexUpdate(Model model, 
            @RequestParam(required = false) Map<String, String> params)
    {
        String kw = params.getOrDefault("kw", null);
        int page = Integer.parseInt(params.getOrDefault("page", "1")); // nếu có thì lấy biến page còn không thì trả về 1
        
        
        model.addAttribute("buses", this.statisticService.getStatistic(kw, page));
        model.addAttribute("size", this.statisticService.getStatistic(kw, page).size());

        return "category-statistic";
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

        model.addAttribute("productStats",this.statisticService.ProductStats(kw, fromDate,toDate));
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
        model.addAttribute("productStatsMonth",this.statisticService.ProductStatsMonth(kw, fromDate,toDate));
//        model.addAttribute("productStatsMonthDetail",this.statisticService.GetListStatsMonthDetail(kw, fromDate,toDate));

        return "product-stats-month";
    }
    @GetMapping("/admin/product-stats-period")
   public String productStatsPeriod(Model model, @RequestParam(required = false) Map<String, String> params){
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
        model.addAttribute("productStatsPeriod",this.statisticService.ProductStatsPeriod(fromDate,toDate));
        return "product-stats-period";
    }
}
