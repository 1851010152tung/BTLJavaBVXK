/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.controllers;

import com.btl.pojos.Employee;
import com.btl.service.EmployeeService;
import java.util.Arrays;
import java.util.List;
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
public class EmployeeController {
    
    @Autowired
    private EmployeeService employeeService;
    
    @GetMapping("/admin/employees")
    public String list(Model model)
    {   
        model.addAttribute("employee", new Employee());
        
        List<String> positionList = Arrays.asList("Nhân viên bán vé","Tài xế");
        model.addAttribute("positionList", positionList);
        
        return "employee";
    }
    
    //Tính năng upload
    //Khai báo upload controller và thêm nhân viên
    @PostMapping("/admin/employees")
    public String addEmployee(Model model, @ModelAttribute(value = "employee") Employee employee)
    { 
        
        //Trường hợp dữ liệu ổn
        if(this.employeeService.addOrUpdate(employee) == true)
        {
            return "redirect:/";
        }
        else 
        {
            model.addAttribute("errMsg", "Có lỗi xảy ra");
        //Khi upload thất bại vẫn ở lại trang employee
            return "employee";
        }
        
        //return "redirect:/";
        
    }
    
    
}
