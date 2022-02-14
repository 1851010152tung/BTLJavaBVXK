/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.controllers;

import com.btl.pojos.Cart;
import com.btl.pojos.User;
import com.btl.service.BusService;
import com.btl.service.CategoryBusService;
import com.btl.service.EmployeeService;
import com.btl.service.RouteService;
import com.btl.service.ScheduleService;
import com.btl.utils.Utils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.persistence.Query;
import javax.servlet.http.HttpSession;
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
    public void commAttr(Model model, HttpSession session){
        model.addAttribute("categoryBuses", this.categoryBusService.getCategoryBuses());
        model.addAttribute("buses", this.busService.getBuses());
        model.addAttribute("schedules", this.scheduleService.getSchedules());
        model.addAttribute("cartCounter", Utils.countCart((Map<Integer, Cart>) session.getAttribute("cart")));

    }
    
    /*@ModelAttribute
    public void commAttr2(Model model){
        model.addAttribute("buses", this.busService.getBuses());
    }
    */
    
    @GetMapping("/") //HTTP GET
    @Transactional
    public String index(Model model,
            @RequestParam(required = false) Map<String, String> params,
            HttpSession session){
        model.addAttribute("bus", this.busService.getBuses());
        model.addAttribute("employee", this.employeeService.getEmployees() );
        model.addAttribute("routes", this.routeService.getRoutes());
        model.addAttribute("schedules", this.scheduleService.getSchedules());
        //s.close();
        model.addAttribute("currentUser", session.getAttribute("currentUser"));
        model.addAttribute(("hotRoutes"), this.routeService.getListHotRoutes(6));

        return "index";
    }
    
    
    //LỊCH TRÌNH
    @RequestMapping("/home_routine") //HTTP GET
    @Transactional
    public String homeRoutine(Model model,
            @RequestParam(required = false) Map<String, String> params){
        
        String kw = params.getOrDefault("kw", null);
        int page = Integer.parseInt(params.getOrDefault("page", "1")); 
        model.addAttribute("bus", this.busService.getBuses());
        model.addAttribute("routes", this.routeService.getRoutes(kw, page));
        model.addAttribute("size", this.routeService.getRoutes(kw, page).size());
        model.addAttribute("counter", this.routeService.totalItem());
        model.addAttribute("schedules", this.scheduleService.getSchedules());
        return "home_routine";
        
        
        //s.close();
        
    }
    
    //LỊCH TRÌNH
    @RequestMapping("/home_routine/list_schedules") //HTTP GET
    @Transactional
    public String listSchedule(Model model,
            @RequestParam(name ="id", defaultValue ="0") int id) {
     
        model.addAttribute("schedules",this.scheduleService.getListSchedulesByIdRoute(id));
        model.addAttribute("size",this.scheduleService.getListSchedulesByIdRoute(id).size());   

        //s.close();
        return "list_schedules";
    }
    
   
}


  
 