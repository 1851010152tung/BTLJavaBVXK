/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.repository.impl;

import com.btl.pojos.Employee;
import com.btl.repository.EmployeeRepository;
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
public class EmployeeRepositoryImpl implements EmployeeRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<Employee> getEmployees() {
        Session s = sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From Employee");
        return q.getResultList();
    }

    @Override
    public boolean addOrUpdate(Employee employee) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try{
            if(employee.getIdEmployee() > 0)
            {
                session.update(employee);
            }else
                session.save(employee);              
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
    public boolean delete(Employee empl) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Employee findById(int i) {
    Session session = this.sessionFactory.getObject().getCurrentSession();   
    
    
    return session.get(Employee.class,i);
    
    
    
    }
    
    
}
