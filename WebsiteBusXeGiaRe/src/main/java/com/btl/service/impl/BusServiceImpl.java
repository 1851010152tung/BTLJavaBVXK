/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.service.impl;

import com.btl.pojos.Bus;
import com.btl.repository.BusRepository;
import com.btl.repository.impl.BusRepositoryImpl;
import com.btl.service.BusService;
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
public class BusServiceImpl implements BusService {

    @Autowired
    private BusRepository busRepository;

    @Autowired
    private Cloudinary cloudinary;

    @Override
    public List<Bus> getBuses() {
        return this.busRepository.getBuses();
    }

    @Override
    public boolean addOrUpdate(Bus bus) {
        //Hứng giá trị bus từ getMapping ở trên
        //Xử lý upload
        try {
            // Để hứng dữ liệu sau khi upload xong dùng Map
            Map r = this.cloudinary.uploader().upload(bus.getFile().getBytes(),
                    ObjectUtils.asMap("resource_type", "auto"));

            bus.setImage((String) r.get("secure_url"));

            //Gọi repository để lưu xuống
            return this.busRepository.addOrUpdate(bus);

            //Khi upload thành công tạm thời cho trở về trang chủ
            //return "redirect:/";
        } catch (IOException ex) {
            //Xuất lỗi
            System.err.println("Add bus " + ex.getMessage());
        }
        return false;
    }

}
