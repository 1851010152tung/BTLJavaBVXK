/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.service.impl;

import com.btl.pojos.Route;
import com.btl.repository.RouteRepository;
import com.btl.service.RouteService;
import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Truc Lam
 */

@Service
public class RouteServiceImpl implements RouteService{

    @Autowired
    private RouteRepository routeRepository;

    @Autowired
    private Cloudinary cloudinary;
    
    @Override
    public List<Route> getRoutes() {
        return this.routeRepository.getRoutes();
    }

    @Override
    public boolean addOrUpdate(Route route) {
        try {
            // Để hứng dữ liệu sau khi upload xong dùng Map
            Map r = this.cloudinary.uploader().upload(route.getFileDeparture().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));

            route.setImageDeparture((String) r.get("secure_url"));

            
            Map n = this.cloudinary.uploader().upload(route.getFileDestination().getBytes(), ObjectUtils.asMap("resource_type", "auto"));
            
            route.setImageDestination((String) n.get("secure_url"));

            //Gọi repository để lưu xuống
            return this.routeRepository.addOrUpdate(route);

            //Khi upload thành công tạm thời cho trở về trang chủ
            //return "redirect:/";
        } catch (IOException ex) {
            //Xuất lỗi
            System.err.println("Add route " + ex.getMessage());
        }
        return false;
    }
    
    
    
}
