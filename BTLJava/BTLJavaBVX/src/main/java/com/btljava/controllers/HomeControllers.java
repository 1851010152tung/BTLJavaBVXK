/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btljava.controllers;


import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author ASUS-LAPTOP
 */
@Controller
public class HomeControllers {
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @RequestMapping("/")
    @Transactional
    public String index(Model model) {
        Session s = sessionFactory.getObject().getCurrentSession();
      //  Query q = s.createQuery("From Category");
      //  model.addAttribute("categories",q.getResultList());
       // s.close();
        model.addAttribute("name","Tung iu Long ne!");
        return "index";
    }
}
