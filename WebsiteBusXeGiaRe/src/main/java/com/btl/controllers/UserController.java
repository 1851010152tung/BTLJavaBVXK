/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.controllers;

import com.btl.pojos.User;
import com.btl.service.UserService;
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
            else
                errMsg = "Đã có lỗi xảy ra";
            
        }else
            errMsg = "Mật khẩu không khớp!";
        
        model.addAttribute("errMsg", errMsg);
        return "register"; //Xảy ra lỗi thì vẫn ở trang đăng ký
    }
    
}
