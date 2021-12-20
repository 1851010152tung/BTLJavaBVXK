/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.repository.impl;

import com.btl.pojos.Schedule;
import com.btl.repository.ScheduleRepository;
import java.util.List;
import org.hibernate.Query;
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
public class ScheduleRepositoryImpl implements ScheduleRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;    
    
    @Override
    public List<Schedule> getSchedules() {
    Session s = sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From Schedule");
        return q.getResultList();        
    }

    @Override
    public boolean addOrUpdate(Schedule schedule) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try{
            if(schedule.getId() > 0)
            {
                session.update(schedule);
            }else
                session.save(schedule);     //create
            
            //Thêm thành công
            return true;
        }catch (Exception ex){
            System.err.println("Lỗi xảy ra khi thêm hoặc sửa" + ex.getMessage());
            ex.printStackTrace();
        }
        
        //Thêm thất bại
        return false;        
    }

    @Override
    public boolean delete(Schedule schedule) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Schedule findById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Schedule.class, id);        
    }


    
    
    
}
