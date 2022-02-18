/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.service.impl;

import com.btl.pojos.Bus;
import com.btl.repository.BusRepository;
import com.btl.repository.StatisticRepository;
import com.btl.repository.impl.BusRepositoryImpl;
import com.btl.service.BusService;
import com.btl.service.StatisticService;
import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Truc Lam
 */

@Service
public class StatisticServiceImpl implements StatisticService {

       
    @Autowired
    private StatisticRepository statisticRepository;


   

    @Override
    public List<Object> getStatistic(String kw, int page) {
         return this.statisticRepository.getStatis(kw, page);
    }

    @Override
    public List<Object> ProductStats(String kw, Date fromDate,Date toDate) {
        return this.statisticRepository.ProductStats(kw, fromDate,toDate);
    }

    @Override
    public List<Object> ProductStatsMonth(String kw, Date fromDate, Date toDate) {
        return this.statisticRepository.ProductStatsMonth(kw,fromDate, toDate);

    }

    @Override
    public List<Object> ProductStatsPeriod(Date fromDate, Date toDate) {
        return this.statisticRepository.ProductStatsPeriod(fromDate, toDate);
    }

//    @Override
//    public List<Object[]> GetListStatsMonthDetail(String string, Date date, Date date1) {
//        return this.statisticRepository.GetListStatsMonthDetail(string, date, date1);
//    }
 

}
