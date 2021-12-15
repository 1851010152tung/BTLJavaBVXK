/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.repository.impl;

import com.btl.pojos.Bus;
import com.btl.repository.BusRepository;
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
public class BusRepositoryImpl implements BusRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    //@Transactional
    public List<Bus> getBuses() {
    Session s = sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From Bus");
        return q.getResultList();
    
    }

    @Override
    public boolean addOrUpdate(Bus bus) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try{
            session.save(bus);
            //Thêm thành công
            return true;
        }catch (Exception ex){
            System.err.println("Add bus error" + ex.getMessage());
            ex.printStackTrace();
        }
        
        //Thêm thất bại
        return false;
        
    }
}
