/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


package com.btl.repository.impl;

import com.btl.pojos.User;
import com.btl.repository.UserRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional
public class UserRepositoryImpl implements UserRepository {
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public boolean addUser(User user) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try{
            
            if(user.getId() > 0)
            {
                session.update(user);
            }else            
                session.save(user);
            return true;
        }catch (Exception ex ){
            System.err.println("Lỗi xảy ra khi thêm hoặc sửa" + ex.getMessage());
            ex.printStackTrace();
        } 
        return false;

    }
    
    

    @Override
    public List<User> getUsers(String username, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<User> query = builder.createQuery(User.class);
        Root root = query.from(User.class);
        query = query.select(root);
        
        if(username != null){
            Predicate p = builder.like(root.get("username").as(String.class),
                    String.format("%%%s%%", username));            
            query = query.where(p);
        }
        
        Query q = session.createQuery(query);
        int maxPage = 20;
        q.setMaxResults(maxPage);
        //page= 1 thì lấy 6 phần tử đầu 
        q.setFirstResult((page - 1 ) * maxPage);
        return q.getResultList();
    }

    @Override
    public boolean updateUser(User user) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try{
            
            //UPDATE USER ROLE
            if(!user.getUserRole().isEmpty()){
                Query q = session.createQuery("UPDATE User SET userRole=:ul WHERE id=:id");
                q.setParameter("ul", user.getUserRole());
                q.setParameter("id", user.getId());
                q.executeUpdate();
            //session.update(user);
            return true;
            }
        }catch (HibernateException ex){
            System.err.println(ex.getMessage());
        
        } 
        return false;
    }
    
    
    
    

    @Override
    public User getUserByUsername(String username) {
        Session s = sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = s.getCriteriaBuilder();
        CriteriaQuery<User> query = builder.createQuery(User.class);
        Root root = query.from(User.class);
        query = query.select(root);
        
        if (!username.isEmpty() ) {
            Predicate p = builder.equal(root.get("username").as(String.class), username.trim());
            query = query.where(p);
        }else
            System.out.println("Chưa có tên đăng nhập!!");
        
        User user = s.createQuery(query).uniqueResult();
        return user;
    }

    @Override
    public User findById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(User.class, id);
    }

    @Override
    public boolean delete(int id) {
        try{
            Session session = this.sessionFactory.getObject().getCurrentSession();
            User u = session.get(User.class, id);
            session.delete(u);
            
            return true;
            
        }catch (HibernateException ex){
            ex.printStackTrace();
        }  
        return false;
    
    }

    @Override
    public List<User> getUsers(String username) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<User> query = builder.createQuery(User.class);
        Root root = query.from(User.class);
        query = query.select(root);
        
        if(!username.isEmpty()){
            Predicate p = builder.equal(root.get("username").as(String.class),username.trim());
              
            query = query.where(p);
        }
        
        Query q = session.createQuery(query);
        return q.getResultList();
    }
}
