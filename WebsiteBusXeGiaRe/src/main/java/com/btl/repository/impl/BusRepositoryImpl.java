/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.repository.impl;

import com.btl.pojos.Bus;
import com.btl.repository.BusRepository;
import java.util.List;
//import javax.persistence.Query;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
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

    //CREATE
    @Override
    public boolean addOrUpdate(Bus bus) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try{
            if(bus.getIdBus() > 0)
            {
                session.update(bus);
            }else
                session.save(bus);     //create
            
            //Thêm thành công
            return true;
        }catch (Exception ex){
            System.err.println("Lỗi xảy ra khi thêm hoặc sửa" + ex.getMessage());
            ex.printStackTrace();
        }
        
        //Thêm thất bại
        return false;
        
    }

    
    //DELETE
    @Override
    public boolean delete(Bus bus) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Transaction transaction = null;
        try{
            //delete
            session.delete(bus);
            transaction.commit();
            //delete thành công
            return true;
        }catch (Exception ex){
            if(transaction != null){
                transaction.rollback();
            }
            System.err.println("Delete bus error" + ex.getMessage());
            ex.printStackTrace();
        }finally{
            session.flush();
            session.close();
        }
        
        return false;
    }

    //FIND BY ID
    @Override
    public Bus findById(int idBus) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Bus.class, idBus);
    }

    @Override
    public int totalItem() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Transaction transaction = null;
        try{
            transaction = session.beginTransaction();
            Query query = session.createQuery("SELECT count(*) FROM Bus");
            //query.setLong("idBus",idBus);
            Long bus = (long) query.uniqueResult();
            transaction.commit();
            return bus.intValue();
        }catch (Exception ex){
            if(transaction != null){
                transaction.rollback();
            }
            //System.err.println("Delete bus error" + ex.getMessage());
            ex.printStackTrace();
        }finally{
            session.flush();
            session.close();
        }
        return 0;
    }
}
