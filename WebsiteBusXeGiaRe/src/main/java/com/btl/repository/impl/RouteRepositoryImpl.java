/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.repository.impl;

import com.btl.pojos.Route;
import com.btl.repository.RouteRepository;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Truc Lam
 */
@Repository
@Transactional
public class RouteRepositoryImpl implements RouteRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<Route> getRoutes() {
    Session s = sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From Route");
        return q.getResultList();
    
    }

    @Override
    public boolean addOrUpdate(Route route) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try{
            session.save(route);
            //Thêm thành công
            return true;
        }catch (Exception ex){
            System.err.println("Add route error" + ex.getMessage());
            ex.printStackTrace();
        }
        
        //Thêm thất bại
        return false;    }
    
}
