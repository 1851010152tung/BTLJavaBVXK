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
            if(route.getId() > 0)
            {
                session.update(route);
            }else
                session.save(route);     //create            
            //Thêm thành công
            return true;
        }catch (Exception ex){
            System.err.println("Lỗi xảy ra khi thêm hoặc sửa" + ex.getMessage());
            ex.printStackTrace();
        }
        
        //Thêm thất bại
        return false;    }

    @Override
    public boolean delete(Route route) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Route findById(int idRoute) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Route.class, idRoute);
    }
    
}
