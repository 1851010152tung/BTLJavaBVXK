/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.controllers;

import com.btl.pojos.Customer;
import com.btl.pojos.Employee;
import com.btl.service.BookingService;
import com.btl.service.BusService;
import com.btl.service.CustomerService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
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
    
    
    @Autowired
    private BookingService bookingService;
    
//    @Autowired
//    private CustomerService customerService;
//    
//    
//    @GetMapping("/passenger")
//    public String list(Model model)
//    {
//        model.addAttribute("customer", new Customer());
//        model.addAttribute("buses", this.busService.getBuses());
//        return "passenger";
//    }
//    
//    
//    @PostMapping("/passenger")
//    public String addEmployee(Model model, 
//            @ModelAttribute(value = "customer") Customer customer)
//    { 
//        
//        //Trường hợp dữ liệu ổn
//        if(this.customerService.addOrUpdate(customer) == true)
//        {
//            return "redirect:/payment";
//        }
//        else 
//        {
//            model.addAttribute("errMsg", "Có lỗi xảy ra");
//        //Khi upload thất bại vẫn ở lại trang employee
//        }
//            return "passenger";
//        
//        //return "redirect:/";
//        
//    }
//    
//    
//    @GetMapping("/payment")
//    public String PaymentTicket(Model model)
//    {
//           model.addAttribute("counter", this.bookingService.totalItem());
//           return "payment";
//
//    }
//    
    
    //BOOKING
    @GetMapping("/admin/data_booking")
    public String ListBooking(Model model, 
            @RequestParam(required = false) Map<String, String> params)
    {
        String kw = params.getOrDefault("kw", null);
        int page = Integer.parseInt(params.getOrDefault("page", "1")); // nếu có thì lấy biến page còn không thì trả về 1

          model.addAttribute("booking", this.bookingService.getListBooking(kw, page));
          model.addAttribute("size", this.bookingService.getListBooking(kw, page).size());
          model.addAttribute("counter", this.bookingService.totalItem());
         
          
        return "data_booking";
    }
    
    
    //BOOKING-DETAIL
    @GetMapping("/admin/data_booking_detail/{id}")
    public String ListBookingDetail(Model model, 
            @PathVariable (value = "id") int id,
            @RequestParam(required = false) Map<String, String> params)
    {
        
          model.addAttribute("BookingDetail", this.bookingService.getListBookingDetail(id));
         
          
        return "data_booking_detail";
    }
    
    
    
    
}
