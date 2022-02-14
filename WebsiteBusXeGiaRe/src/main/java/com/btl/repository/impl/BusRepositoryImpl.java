/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.repository.impl;

import com.btl.pojos.Booking;
import com.btl.pojos.BookingDetail;
import com.btl.pojos.Bus;
import com.btl.pojos.CategoryBus;
import com.btl.pojos.Comment;
import com.btl.pojos.Employee;
import com.btl.pojos.Route;
import com.btl.pojos.Schedule;
import com.btl.repository.BusRepository;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
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


    @Override
    public List<Object> getListByCondition(String kw, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
        Root rootB = query.from(Bus.class);
        //Root rootR = query.from(Route.class);
        Root rootE = query.from(Employee.class);
        //Root rootS = query.from(Schedule.class);
        Root rootC = query.from(CategoryBus.class);
        
        //Predicate p = builder.equal(rootB.get("idBus"), rootR.get("bus"));
        Predicate pc = builder.equal(rootC.get("id"), rootB.get("categoryBus"));
        //Predicate pr = builder.equal(rootR.get("id"),rootS.get("route"));
        Predicate pe = builder.equal(rootE.get("idEmployee"), rootB.get("employee"));
        
        query.multiselect(rootB.get("idBus"),rootB.get("busName"),rootB.get("numberPlate"),rootB.get("manufacturer"),rootC.get("name"),rootB.get("seatNumber"),rootB.get("title"),rootB.get("description"),rootB.get("image"),
                //rootR.get("id"),rootR.get("departure"),rootR.get("destination"),rootR.get("distance"),rootR.get("ticketPrice"),
                rootE.get("idEmployee"),rootE.get("firstName"),rootE.get("lastName"),rootE.get("phone"),rootE.get("username"),rootE.get("email"),rootE.get("gender"),rootE.get("birthday"),rootE.get("position"),rootE.get("image"));
                //rootS.get("id"),rootS.get("departureDate"),rootS.get("destinationDate"));
        if(kw!=null)
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

//                
                query = query.where(builder.and(builder.or(p1,p2,p3,p4),pe,pc));
            
           
           
            
        }else{
            query = query.where(builder.and(pc,pe));
            
        }
        query = query.orderBy(builder.asc(rootB.get("idBus")));
        
        Query q = session.createQuery(query);
        

        //Phan trang
        int maxPage = 6;
        q.setMaxResults(maxPage);
        //Vị trí bắt đầu
        q.setFirstResult((page -1 )* maxPage);
        return q.getResultList();


    }

    @Override
    public long totalItem() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("SELECT COUNT(*) FROM Bus");
        return Long.parseLong(q.getSingleResult().toString());
    }

    @Override
    public List<Object> getState(String kw, int page) {
            Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
        Root rootB = query.from(Bus.class);
        Root rootR = query.from(Route.class);
        Root rootE = query.from(Employee.class);
        Root rootS = query.from(Schedule.class);
        Root rootC = query.from(CategoryBus.class);
        Root rootK = query.from(Booking.class);
        Root rootD = query.from(BookingDetail.class);
        
        Predicate p = builder.equal(rootB.get("idBus"), rootS.get("bus"));
        Predicate pc = builder.equal(rootC.get("id"), rootB.get("categoryBus"));
        Predicate pr = builder.equal(rootR.get("id"),rootS.get("route"));
        Predicate pk = builder.equal(rootK.get("id"),rootD.get("booking"));
        Predicate pd = builder.equal(rootS.get("id"), rootD.get("schedule"));
        Predicate pe = builder.equal(rootE.get("idEmployee"), rootB.get("employee"));
        
        
        query.multiselect(rootD.get("id"), rootD.get("quantity"), rootD.get("price"), 
                rootR.get("departure"),rootR.get("destination"),
                rootS.get("departureDate"),
                rootK.get("bookingDate"),
                rootB.get("busName"), rootB.get("numberPlate"),
                rootC.get("name"),
                builder.count(rootB.get("idBus"))
        );
        query.groupBy(rootR.get("id"));
        if(kw!=null)
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

//                
                query = query.where(builder.and(builder.or(p1,p2,p3,p4),pe,pc,pr,p,pk,pd));
            
           
           
            
        }else{
            query = query.where(builder.and(pc,pe,pr,p,pk,pd));
            
            
        }
        query = query.orderBy(builder.asc(rootB.get("idBus")));
        
        Query q = session.createQuery(query);
        

        //Phan trang
        int maxPage = 6;
        q.setMaxResults(maxPage);
        //Vị trí bắt đầu
        q.setFirstResult((page -1 )* maxPage);
        return q.getResultList();

    }

    @Override
    public List<Object> ProductStats(String kw, Date fromDate,Date toDate) {
         Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
        Root rootB = query.from(Bus.class);
        Root rootR = query.from(Route.class);
        Root rootE = query.from(Employee.class);
        Root rootS = query.from(Schedule.class);
        Root rootC = query.from(CategoryBus.class);
        Root rootK = query.from(Booking.class);
        Root rootD = query.from(BookingDetail.class);
        List<Predicate> predicates = new ArrayList<>();
        predicates.add(builder.equal(rootB.get("idBus"), rootS.get("bus")));
        predicates.add(builder.equal(rootC.get("id"), rootB.get("categoryBus")));
        predicates.add(builder.equal(rootR.get("id"),rootS.get("route")));
        predicates.add(builder.equal(rootK.get("id"),rootD.get("booking")));
        predicates.add(builder.equal(rootS.get("id"), rootD.get("schedule")));
        predicates.add(builder.equal(rootE.get("idEmployee"), rootB.get("employee")));
        
       
        
    
        query.multiselect(rootK.get("id"),rootK.get("total"),rootK.get("bookingDate"),
                rootD.get("quantity"),rootD.get("price"),
                rootR.get("id"),rootR.get("departure"),rootR.get("destination"),
                rootB.get("busName"), 
                rootC.get("name"),
                builder.sum(builder.prod(rootD.get("quantity"),rootD.get("price"))));
        
                query.groupBy(rootR.get("id"));
         
        
    
      if(kw != null && !kw.isEmpty())
      {
                predicates.add(builder.or(builder.like(rootR.get("departure"), String.format("%%%s%%", kw)),
                   builder.like(rootR.get("destination"), String.format("%%%s%%", kw))));

      }
      if(fromDate != null)
          predicates.add(builder.greaterThanOrEqualTo(rootK.get("bookingDate"),fromDate));
      if(toDate != null)
          predicates.add(builder.lessThanOrEqualTo(rootK.get("bookingDate"),toDate));
      query.where(predicates.toArray(new Predicate[] {}));
      
        query = query.orderBy(builder.asc(rootB.get("idBus")));
       // query.groupBy(rootB.get("idBus"));
        Query q = session.createQuery(query);
        
        return q.getResultList();
    }

    @Override
    public List<Object> ProductStatsMonth(String kw, Date fromDate,Date toDate) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
        Root rootB = query.from(Bus.class);
        Root rootR = query.from(Route.class);
        Root rootE = query.from(Employee.class);
        Root rootS = query.from(Schedule.class);
        Root rootC = query.from(CategoryBus.class);
        Root rootK = query.from(Booking.class);
        Root rootD = query.from(BookingDetail.class);
        List<Predicate> predicates = new ArrayList<>();
        predicates.add(builder.equal(rootB.get("idBus"), rootS.get("bus")));
        predicates.add(builder.equal(rootC.get("id"), rootB.get("categoryBus")));
        predicates.add(builder.equal(rootR.get("id"),rootS.get("route")));
        predicates.add(builder.equal(rootK.get("id"),rootD.get("booking")));
        predicates.add(builder.equal(rootS.get("id"), rootD.get("schedule")));
        predicates.add(builder.equal(rootE.get("idEmployee"), rootB.get("employee")));
    
        query.multiselect(builder.function("MONTH",Integer.class, rootK.get("bookingDate")),
                builder.function("YEAR",Integer.class, rootK.get("bookingDate")),
                rootK.get("id"),rootK.get("total"),rootK.get("bookingDate"),
                rootD.get("quantity"),rootD.get("price"),
                rootR.get("id"),rootR.get("departure"),rootR.get("destination"),
                rootB.get("busName"), 
                rootC.get("name"),
                builder.sum(builder.prod(rootD.get("quantity"),rootD.get("price"))));
        
                query.groupBy(builder.function("MONTH",Integer.class, rootK.get("bookingDate")),
                builder.function("YEAR",Integer.class, rootK.get("bookingDate")));
         
        
    
      if(kw != null && !kw.isEmpty())
      {
                predicates.add(builder.or(builder.like(rootR.get("departure"), String.format("%%%s%%", kw)),
                   builder.like(rootR.get("destination"), String.format("%%%s%%", kw))));
      }
      if(fromDate != null)
          predicates.add(builder.greaterThanOrEqualTo(rootK.get("bookingDate"),fromDate));
      if(toDate != null)
          predicates.add(builder.lessThanOrEqualTo(rootK.get("bookingDate"),toDate));
      query.where(predicates.toArray(new Predicate[] {}));
      
        query = query.orderBy(builder.asc(rootK.get("bookingDate")));
        Query q = session.createQuery(query);
        
        return q.getResultList();

    }
    
    
    @Override
    public List<Object[]> getMostCommentBus(int num) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
                
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
        
        Root rootB = query.from(Bus.class);
        Root rootC = query.from(Comment.class);
        Root rootCB = query.from(CategoryBus.class);
        
        Predicate p = builder.equal(rootB.get("idBus"),rootC.get("bus"));
        Predicate pc = builder.equal(rootCB.get("id"), rootB.get("categoryBus"));
        
        query.multiselect(rootB.get("busName"),rootB.get("numberPlate"),rootB.get("manufacturer"),rootCB.get("name"),
                rootB.get("seatNumber"),rootB.get("image"),
                builder.count(rootB.get("idBus")));
        query = query.where(builder.and(p,pc));

        query = query.groupBy(rootB.get("idBus"));
        query = query.orderBy(builder.desc(builder.count(rootB.get("idBus"))),
                builder.desc(rootB.get("idBus")));
        
        Query q = session.createQuery(query);
        q.setMaxResults(num);
        return q.getResultList();   
    }
  
    
    

}
