/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.controllers;

import com.btl.pojos.Bus;
import com.btl.service.BusService;
import com.btl.service.EmployeeService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Truc Lam
 */
@Controller
@ControllerAdvice
public class BusController {
    
    @Autowired
    private BusService busService;
    
    @Autowired
    private EmployeeService employeeService;
    
    @GetMapping("/admin/buses")
    public String list(Model model)
    {
        
        model.addAttribute("bus", new Bus());
        model.addAttribute("employees", this.employeeService.getEmployees() );

        return "bus";
    }
    
    
    
    
    //Tính năng upload
    //Khai báo upload controller và thêm chuyến xe
    @PostMapping("/admin/buses")
    public String add(Model model, @ModelAttribute(value = "bus") Bus bus)
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
        }
                    return "bus";

    }
    
    
    //EDIT BUS
    @RequestMapping("/admin/data_buses")
    public String indexUpdate(Model model, 
            @RequestParam(required = false) Map<String, String> params)
    {
        String kw = params.getOrDefault("kw", null);
        int page = Integer.parseInt(params.getOrDefault("page", "1")); // nếu có thì lấy biến page còn không thì trả về 1
        
        
        model.addAttribute("buses", this.busService.getListByCondition(kw, page));
        model.addAttribute("size", this.busService.getListByCondition(kw, page).size());
        model.addAttribute("counter", this.busService.totalItem());
        model.addAttribute("employees", this.employeeService.getEmployees() );

        return "data_bus";
    }
    
     @PostMapping("/admin/data_buses/update")
    public String Update(Model model, @ModelAttribute(value = "bus") Bus bus)
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
        }
                    return "update_bus";

    }
    
    
    @GetMapping("/admin/data_buses/update")
    public String listEdit(Model model,
            @RequestParam(name ="idBus", defaultValue ="0") int idBus)
    {
        if(idBus > 0){
            model.addAttribute("bus", this.busService.findById(idBus));
            model.addAttribute("employees", this.employeeService.getEmployees() );

        }else
            model.addAttribute("bus", new Bus());
        return "update_bus";
    }
    
    
    //DELETE DATA BUSES
    
    @GetMapping("/admin/data_buses/delete")
    public String delete(Model model,
            @RequestParam(name = "idBus",defaultValue ="0")int idBus)
    {
        if(this.busService.delete(idBus))
            model.addAttribute("message", "Xóa thành công");
        else 
            model.addAttribute("message", "Xóa thất bại");
        
        return "redirect:/admin/data_buses";
    }
    
    
    
    
    
    
    
    
    
}
