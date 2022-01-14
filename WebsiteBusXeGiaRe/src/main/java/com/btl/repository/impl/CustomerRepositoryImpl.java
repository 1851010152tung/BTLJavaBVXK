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
import com.btl.pojos.Route;
import com.btl.pojos.Schedule;
import com.btl.pojos.User;
import com.btl.repository.CustomerRepository;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Truc Lam
 */
@Repository
public class CustomerRepositoryImpl implements CustomerRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    @Override
    public List<Object[]> listBooking(String ticketName, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);
        
        Root rootS = query.from(Schedule.class);
        Root rootB = query.from(Booking.class);
        Root rootBD = query.from(BookingDetail.class);
        Root rootU = query.from(User.class);
//        Root rootBus = query.from(Bus.class);
        Root rootR = query.from(Route.class);
        
        List<Predicate> predicates = new ArrayList<>();
        predicates.add(builder.equal(rootS.get("id"), rootBD.get("schedule")));
        predicates.add(builder.equal(rootB.get("id"), rootBD.get("booking")));
        predicates.add(builder.equal(rootBD.get("user"), rootU.get("id")));
//        predicates.add(builder.equal(rootBus.get("idBus"), rootS.get("schedule")));
        predicates.add(builder.equal(rootR.get("id"), rootS.get("schedule")));


        if (ticketName != null && ticketName.trim().isEmpty()) {
            predicates.add(builder.like(rootR.get("departure"), String.format("%%%s%%", ticketName)));
            
        }
        query.multiselect(rootB.get("id"),rootU.get("firstName"),rootU.get("lastName"),
                rootU.get("phone"),rootB.get("bookingDate"),rootB.get("total"));
        
        query.where(predicates.toArray(new Predicate[] {}));
        query.groupBy(rootB.get("id"));
        query.orderBy(builder.desc(rootB.get("id")));
        Query q = session.createQuery(query);
        
        int maxPage = 10;
        q.setMaxResults(maxPage);
        //page= 1 thì lấy 10 phần tử đầu 
        q.setFirstResult((page - 1 ) * maxPage);
        return q.getResultList();
    }

    @Override
    public Long quantityBooking() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("Select Count(*) From Booking");
        return Long.parseLong(q.getSingleResult().toString());        
    }

    @Override
    public List<Object[]> listBookingDetail(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);

        Root rootS = query.from(Schedule.class);
        Root rootB = query.from(Booking.class);
        Root rootBD = query.from(BookingDetail.class);
        //Root rootU = query.from(User.class);
        Root rootBus = query.from(Bus.class);
        Root rootR = query.from(Route.class);
        Root rootC = query.from(CategoryBus.class);
        
        List<Predicate> predicates = new ArrayList<>();
        predicates.add(builder.equal(rootS.get("id"), rootBD.get("schedule")));
        predicates.add(builder.equal(rootB.get("id"), rootBD.get("booking")));
//        predicates.add(builder.equal(rootBD.get("user"), rootU.get("id")));
        predicates.add(builder.equal(rootBus.get("idBus"), rootS.get("schedule")));
        predicates.add(builder.equal(rootR.get("id"), rootS.get("schedule")));
        predicates.add(builder.equal(rootBus.get("categoryBus"), rootC.get("id")));

        query.multiselect(
                rootS.get("scheduleId"), rootS.get("departureDate"), rootS.get("departureTime"),rootS.get("destinationTime"),
                rootR.get("departure"),rootR.get("destination"), rootR.get("journeyTime"), rootR.get("ticketPrice"),
                rootBus.get("busName"),rootBus.get("numberPlate"),rootBus.get("seatNumber"), rootC.get("name"),
                rootB.get("total"));
        
        query.where(predicates.toArray(new Predicate[] {}));
        query.orderBy(builder.asc(rootB.get("id")));
        
        Query q = session.createQuery(query);

        
        return q.getResultList();
        
        
    }
    
    
    
}
