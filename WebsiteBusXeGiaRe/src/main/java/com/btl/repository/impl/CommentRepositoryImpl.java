/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.repository.impl;

import com.btl.pojos.Comment;
import com.btl.pojos.User;
import com.btl.repository.CommentRepository;
import java.util.ArrayList;
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

/**
 *
 * @author Truc Lam
 */
@Repository
@Transactional
public class CommentRepositoryImpl implements CommentRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;    
    
    @Override
    public long totalItem(int idBus) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query query = session.createQuery("Select Count(*) From Comment Where bus.id_bus=:idBus");
        query.setParameter("idBus", idBus);
        
        return  Long.parseLong(query.getSingleResult().toString());        
    }

    @Override
    public Comment addComment(Comment comment, int idComment) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(comment);
            
            return comment;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }
        return null;    
    }  

    @Override
    public List<Object[]> getListComment(int idBus, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);

        Root rootC = query.from(Comment.class);
        Root rootU = query.from(User.class);

        
//        vi nhieu dieu kien ket nen dung List<Predicate>
        List<Predicate> predicates = new ArrayList<>();
        predicates.add(builder.equal(rootC.get("user"), rootU.get("id")));
        predicates.add(builder.equal(rootC.get("bus"), idBus));
        query.multiselect(rootC.get("idComment"), rootC.get("content"),
                rootC.get("createDate"), rootU.get("avatar"),rootU.get("username"));
        query.where(predicates.toArray(new Predicate[] {}));
        query = query.orderBy(builder.desc(rootC.get("idComment")));//sap xep
        
        Query q = session.createQuery(query);
        int maxPage = 5;
        q.setMaxResults(maxPage);
        //page= 1 thì lấy 5 phần tử đầu 
        q.setFirstResult((page - 1 ) * maxPage);
        
        return q.getResultList();
    }
    
}
