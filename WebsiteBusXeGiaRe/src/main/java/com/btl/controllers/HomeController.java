/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.controllers;

import com.btl.pojos.User;
import com.btl.service.BusService;
import com.btl.service.CategoryBusService;
import com.btl.service.EmployeeService;
import com.btl.service.RouteService;
import com.btl.service.ScheduleService;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author ASUS
 */


@Controller
@ControllerAdvice
public class HomeController {
    
    @Autowired
    private CategoryBusService categoryBusService;
    
    @Autowired
    private BusService busService;
    
    @Autowired
    private EmployeeService employeeService;
    
    @Autowired
    private RouteService routeService;
    
    @Autowired
    private ScheduleService scheduleService;    
            
    
    @ModelAttribute
    public void commAttr(Model model){
        model.addAttribute("categoryBuses", this.categoryBusService.getCategoryBuses());
                model.addAttribute("buses", this.busService.getBuses());

    }
    
    /*@ModelAttribute
    public void commAttr2(Model model){
        model.addAttribute("buses", this.busService.getBuses());
    }
    */
    
    @RequestMapping("/") //HTTP GET
    @Transactional
    public String index(Model model){
        model.addAttribute("bus", this.busService.getBuses());
        model.addAttribute("employee", this.employeeService.getEmployees() );
        //s.close();
        return "index";
    }
    
    
    @RequestMapping("/home_routine") //HTTP GET
    @Transactional
    public String homeRoutine(Model model){
        model.addAttribute("bus", this.busService.getBuses());
        model.addAttribute("employee", this.employeeService.getEmployees() );
        model.addAttribute("categoryBus", this.categoryBusService.getCategoryBuses());
        model.addAttribute("route", this.routeService.getRoutes());
        model.addAttribute("schedule", this.scheduleService.getSchedules());
        
        //s.close();
        return "home_routine";
    }
    
    
    
   
}


  
 