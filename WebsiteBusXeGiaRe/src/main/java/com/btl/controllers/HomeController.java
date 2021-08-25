/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.controllers;

import com.btl.pojos.User;
import com.btl.service.CategoryService;
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
public class HomeController {
    //Xây dựng tầng Repository và Service của Front Controller Pattern
    @Autowired
    private CategoryService categoryService;
    
    @RequestMapping("/")
    public String index(Model model){
        model.addAttribute("categories", this.categoryService.getCategories());
        
        return "baseLayout";
    }
    
    //ap dung Hibernate vao Spring MVC
//    @Autowired
//    private LocalSessionFactoryBean sessionFactory;
//    
//    @RequestMapping("/")
//    @Transactional
//    public String index(Model model){
//        Session s = sessionFactory.getObject().getCurrentSession();
//        Query q = s.createQuery("From Category");
//        model.addAttribute("categories", q.getResultList());
        //s.close();
//        
//        return "index";
//    }
    
    
    //sd RequestParam = cach xai key cho code ngan hon
//    @RequestMapping("/")
//    public String index(Model model,
//                        @RequestParam Map<String, String> params){
//        String firstName = params.get("first_name"); // key ở đây là first_name
//        String lastName = params.get("last_name");
//        if (firstName != null && lastName != null)
//            model.addAttribute("name", String.format("%s %s", firstName, lastName)); //bien name la ten bien index.jsp
//        else
//            model.addAttribute("name", "Duyen");
//        
//        model.addAttribute("user", new User());
//        
//        List<User> users = new ArrayList<>();
//        users.add(new User("Nam", "Nguyen"));
//        users.add(new User("Binh", "Le"));
//        
//        model.addAttribute("users", users);
//        
//        return "index";
//    }
    
    
    //sd RequestParam thi bat buoc phai truyen tham so tai duong dan.
    //vd: http://localhost:8080/SpringMVCDemo/?first_name=Duyen&last_name=Ho => Welcome to my Website! ^^ Hello Duyen Ho
    //sd required thi truyen hay ko cung dc. Neu ko truyen gi het se lay mac dinh. VD: Welcome to my Website! ^^ Hello Duyen
//    @RequestMapping("/")
//    public String index(Model model,
//                        @RequestParam(value = "first_name", required = false, defaultValue = "A") String firstName, 
//                        @RequestParam(value = "last_name", required = false, defaultValue = "B") String lastName){
//        if (firstName != null && lastName != null)
//            model.addAttribute("name", String.format("%s %s", firstName, lastName)); //bien name la ten bien index.jsp
//        else
//            model.addAttribute("name", "Duyen");
//        return "index";
//    }
    
    
//    @RequestMapping("/")
//    public String index(Model model){
//        model.addAttribute("name", "Duyen");
//        return "index";
//    }
    
    
    //sd pathVariable de truyen tham so tren duong dan trang web. Vd http://localhost:8080/SpringMVCDemo/hello/ngan%20ne => Hi ngan ne!!!
    @RequestMapping("/hello/{name}") //name la phan de minh truyen thong tin vao
    public String hello(Model model, @PathVariable(value = "name") String ten) {
        model.addAttribute("message", "Hi " + ten + "!!!!");
        return "hello";
    }
    
    @RequestMapping(path = "/hello-post", method = RequestMethod.POST)
    public String show(Model model, @ModelAttribute(value = "user") User user) {
        model.addAttribute("fullName", user.getFirstName() + " " +user.getLastName());
        return "index";
    }
    
    @RequestMapping(path = "/test")
    public String testRedirect(Model model){
        model.addAttribute("testMsg","Welcome Redirect");
        
        return "forward:/hello/Duyen";
        //return "redirect:/hello/Duyen";
    }
}
