
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.controllers;

import com.btl.pojos.Employee;
import com.btl.pojos.User;
import com.btl.service.UserService;
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
public class UserController {
    
    @Autowired
    private UserService userDetailsService;
    
    @GetMapping("/login")
    public String login(){
        return "login";
    }
    
    @GetMapping("/register")
    public String registerView(Model model){ //Trả ra một đối tượng user để link các trường vào
        //Thêm một user rỗng vào
        model.addAttribute("user", new User());
        return "register";
    }
    
    @PostMapping("/register")
    //Tất cả thông tin được nhập vào sẽ bỏ vào đổi tượng User
    public String register(Model model, @ModelAttribute(value = "user") User user){
        String errMsg = "";
        if(user.getPassword().equals(user.getConfirmPassword()))
        {
            if(this.userDetailsService.addUser(user)==true)
                return "redirect:/login"; //Nếu đăng ký thành công chuyển sang đăng nhập
            else{
                errMsg = "Đã có lỗi xảy ra";
                user.setPassword("");
                user.setConfirmPassword("");
                model.addAttribute("errMsg", errMsg);
            }
        }else
            errMsg = "Mật khẩu không khớp!";
        
        model.addAttribute("errMsg", errMsg);
        return "register"; //Xảy ra lỗi thì vẫn ở trang đăng ký
    }
    
       //EDIT 
    @RequestMapping("/admin/data_users")
    public String indexUpdate(Model model, 
            @RequestParam(required = false) Map<String, String> params)
    {
        String kw = params.getOrDefault("kw", null);
        int page = Integer.parseInt(params.getOrDefault("page", "1")); // nếu có thì lấy biến page còn không thì trả về 1
        
        
        model.addAttribute("users", this.userDetailsService.getUsers(kw,page));
        model.addAttribute("size", this.userDetailsService.getUsers(kw, page).size());
//        model.addAttribute("counter", this.userDetailsService.totalItem());        
        return "data_user";
    }
    
     @PostMapping("/admin/data_users/update")
    public String Update(Model model, @ModelAttribute(value = "user") User user)
    { 
        
        //Trường hợp dữ liệu ổn
        if(this.userDetailsService.addUser(user) == true)
        {
            return "redirect:/admin/data_users";
        }
        else 
        {
            model.addAttribute("errMsg", "Có lỗi xảy ra");
        //Khi upload thất bại vẫn ở lại trang bus.
        }
                    return "update_user";

    }
    
    
    @GetMapping("/admin/data_users/update")
    public String listEdit(Model model,
            @RequestParam(name ="id", defaultValue ="0") int id)
    {
        if(id > 0)
        {
            model.addAttribute("user", this.userDetailsService.findById(id));

        }else
            model.addAttribute("user", new User());
        return "update_user";
    }
     
    
    //DELETE DATA USER
    @GetMapping("/admin/data_users/delete")
    public String delete(Model model,
            @RequestParam(name = "id", defaultValue = "0")int id)
    {
        if(this.userDetailsService.delete(id))
            model.addAttribute("message","Xóa thành công!!");
        else
            model.addAttribute("message", "Xóa thất bại!!");
        return "redirect:/admin/data_users";
    }
    
 
    
    
}
