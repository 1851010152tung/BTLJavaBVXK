/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.repository.impl;

import com.btl.pojos.Bus;
import com.btl.pojos.CategoryBus;
import com.btl.pojos.Employee;
import com.btl.pojos.Route;
import com.btl.pojos.Schedule;
import com.btl.repository.BusRepository;
import java.math.BigDecimal;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.persistence.Query;
//import org.hibernate.Query;
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
            //delete thành công
            return true;
        }catch (Exception ex){
            
            System.err.println("Delete bus error" + ex.getMessage());
            ex.printStackTrace();
        }
        
        return false;
    }

    //FIND BY ID
    @Override
    public Bus findById(int idBus) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Bus.class, idBus);
    }

//    @Override
//    public int totalItem() {
//        Session session = this.sessionFactory.getObject().getCurrentSession();
//        Transaction transaction = null;
//        try{
//            transaction = session.beginTransaction();
//            Query query = session.createQuery("SELECT count(*) FROM Bus");
//            //query.setLong("idBus",idBus);
//            Long bus = (long) query.uniqueResult();
//            transaction.commit();
//            return bus.intValue();
//        }catch (Exception ex){
//            if(transaction != null){
//                transaction.rollback();
//            }
//            //System.err.println("Delete bus error" + ex.getMessage());
//            ex.printStackTrace();
//        }finally{
//            session.flush();
//            session.close();
//        }
//        return 0;
//    }

    @Override
    public List<Object> getListByCondition(String kw, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
        Root rootB = query.from(Bus.class);
        Root rootR = query.from(Route.class);
        Root rootE = query.from(Employee.class);
        Root rootS = query.from(Schedule.class);
        Root rootC = query.from(CategoryBus.class);
        
        Predicate p = builder.equal(rootB.get("idBus"), rootR.get("bus"));
        Predicate pc = builder.equal(rootC.get("id"), rootB.get("CateoryBus"));
        Predicate pr = builder.equal(rootR.get("id"),rootS.get("route"));
        Predicate pe = builder.equal(rootE.get("idEmployee"), rootS.get("employee"));
        
        query.multiselect(rootB.get("idBus"),rootB.get("busName"),rootB.get("numberPlate"),rootB.get("manufacturer"),rootC.get("name"),rootB.get("seatNumber"),rootB.get("title"),rootB.get("description"),rootB.get("image"),
                rootR.get("id"),rootR.get("departure"),rootR.get("destination"),rootR.get("distance"),rootR.get("ticketPrice"),rootR.get("imageDeparture"),rootR.get("imageDestination"),
                rootE.get("idEmployee"),rootE.get("firstName"),rootE.get("lastName"),rootE.get("phone"),rootE.get("username"),rootR.get("password"),rootR.get("email"),rootR.get("gender"),rootE.get("birthday"),rootE.get("position"),rootE.get("image"),
                rootS.get("id"),rootS.get("departureDate"),rootS.get("destinationDate"));
        if(kw!=null)
        {
            if(kw.contains("-"))
            {
                String[] s = kw.split("-");
                if(Integer.parseInt(s[0])==0 && Integer.parseInt(s[1])==0)
                {
                    Predicate p1 = builder.equal(rootR.get("ticketPrice").as(BigDecimal.class), 0);
                    query = query.where(builder.and(p,pc,pe,pr,p1));
                }else{
                    Predicate p1 = builder.between(rootR.get("ticketPrice").as(BigDecimal.class), 
                            Integer.parseInt(s[0]), Integer.parseInt(s[1]));
                    query = query.where(builder.and(p,pc,pe,pr,p1));
                }
            }else if(kw.equals("1"))
            {
                query = query.where(builder.and(p,pc,pr,pe, builder.equal(rootR.get("now"), Integer.parseInt(kw))));
                
            }else
            {
                Predicate p1 = builder.like(rootB.get("busName").as(String.class),
                        String.format("%%s%%", kw));
                Predicate p2 = builder.like(rootE.get("firstName").as(String.class), 
                        String.format("%%s%%", kw));
                Predicate p3 = builder.like(rootE.get("lastName").as(String.class), 
                        String.format("%%s%%", kw));
                //Loai ghe
                Predicate p4 = builder.like(rootC.get("name").as(String.class), 
                        String.format("%%s%%", kw));
                Predicate p5 = builder.like(rootR.get("departure").as(String.class), 
                        String.format("%%s%%", kw));
                Predicate p6 = builder.like(rootR.get("destination").as(String.class), 
                        String.format("%%s%%", kw));
                Predicate p7 = builder.like(rootR.get("ticketPrice").as(String.class), 
                        String.format("%%s%%", kw));
                Predicate p8 = builder.like(rootS.get("departureDate").as(String.class), 
                        String.format("%%s%%", kw));
                Predicate p9 = builder.like(rootS.get("destinationDate").as(String.class), 
                        String.format("%%s%%", kw));
                query = query.where(builder.and(builder.or(p1,p2,p3,p4,p5,p6,p7,p8,p9),p,pr,pe,pc));
            
            }
           
            
        }else{
            query = query.where(builder.and(p,pc,pe,pr));
            
        }
        query = query.orderBy(builder.asc(rootB.get("idBus")));
        
        Query q = session.createQuery(query);
        

        //Phan trang
        int maxPage = 10;
        q.setMaxResults(maxPage);
        q.setFirstResult((page -1 )* maxPage);
        return q.getResultList();


    }

    @Override
    public int totalItem() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
