/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.repository;

import com.btl.pojos.Bus;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Truc Lam
 */
public interface StatisticRepository {

    List<Object> getStatis(String kw, int page);
    List<Object> ProductStats(String kw, Date fromDate,Date toDate);
    List<Object> ProductStatsMonth(String kw, Date fromDate,Date toDate);
    List<Object> ProductStatsPeriod(Date fromDate,Date toDate);
    
    //test
//    List<Object[]> GetListStatsMonthDetail(String kw, Date fromDate,Date toDate);
    
}
