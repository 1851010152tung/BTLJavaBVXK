/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.controllers;

import com.btl.pojos.Bus;
import com.btl.pojos.Route;
import com.btl.service.BusService;
import com.btl.service.CategoryBusService;
import com.btl.service.RouteService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
//           model.addAttribute("message", "Thêm tuyến xe thành công");
            return "redirect:/admin/routes";
        }
        else 
        {
            model.addAttribute("errMsg", "Có lỗi xảy ra");
            return "route";
        }
    }
    
    
    //EDIT ROUTE
    @RequestMapping("/admin/data_routes")
    public String indexUpdate(Model model, 
            @RequestParam(required = false) Map<String, String> params)
    {
        
        String kw = params.getOrDefault("kw", null);
        int page = Integer.parseInt(params.getOrDefault("page", "1")); // nếu có thì lấy biến page còn không thì trả về 1
        
        model.addAttribute("routes", this.routeService.getRoutes(kw, page));
        model.addAttribute("size", this.routeService.getRoutes(kw, page).size());
        model.addAttribute("counter", this.routeService.totalItem());
        //model.addAttribute("buses", this.busService.getBuses());
        //model.addAttribute("categoryBuses", this.categoryBusService.getCategoryBuses());
        return "data_route";
    }
    
     @PostMapping("/admin/data_routes/update")
    public String Update(Model model, @ModelAttribute(value = "route") Route route)
    { 
        
        //Trường hợp dữ liệu ổn
        if(this.routeService.addOrUpdate(route) == true)
        {
//               model.addAttribute("message", "Cập nhật tuyến xe thành công");
            return "redirect:/admin/data_routes";
        }
        else 
        {
            model.addAttribute("errMsg", "Có lỗi xảy ra");
        //Khi upload thất bại vẫn ở lại trang bus.
        }
                    return "update_route";

    }
    
    
    @GetMapping("/admin/data_routes/update")
    public String listEdit(Model model,
            @RequestParam(name ="id", defaultValue ="0") int id)
    {
        if(id > 0){
            model.addAttribute("route", this.routeService.findById(id));
                //model.addAttribute("buses", this.categoryBusService.getCategoryBuses());

        }else
            model.addAttribute("route", new Route());
        return "update_route";
    }
    
    
    //DELETE DATA_ROUTES
    @GetMapping("/admin/data_routes/delete")
    public String delete(Model model,
            @RequestParam(name = "id",defaultValue ="0")int id)
    {
        if(this.routeService.delete(id))
            model.addAttribute("message", "Xóa thành công");
        else 
            model.addAttribute("message", "Xóa thất bại");
        
        return "redirect:/admin/data_routes";
    }
    
    
}
