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
            if(bus.getIdBus() > 0) { //sua 
                if (bus.getFile().getBytes().length == 0) {
                    Bus b = this.busRepository.findById(bus.getIdBus());
                    bus.setImage(b.getImage());
                }else
                {
                    // Để hứng dữ liệu sau khi upload xong dùng Map
                            Map r = this.cloudinary.uploader().upload(bus.getFile().getBytes(),
                                    ObjectUtils.asMap("resource_type", "auto"));

                            bus.setImage((String) r.get("secure_url"));
                }
            }else{
                if(bus.getFile().getBytes().length !=0) {
                            // Để hứng dữ liệu sau khi upload xong dùng Map
                            Map r = this.cloudinary.uploader().upload(bus.getFile().getBytes(),
                                    ObjectUtils.asMap("resource_type", "auto"));

                            bus.setImage((String) r.get("secure_url"));
                }else
                {
                    bus.setImage("");
                }

            }
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

   

    @Override
    public boolean delete(int id) {
        Bus b = this.busRepository.findById(id);
        return this.busRepository.delete(b);
    }

    @Override
    public Bus findById(int l) {
        return this.busRepository.findById(l);
    }

    //Trả ra số lượng item
    @Override
    public Long totalItem() {
        return this.busRepository.totalItem();
    }

    @Override
    public List<Object> getListByCondition(String kw, int page) {
        return this.busRepository.getListByCondition(kw, page);
    }

    @Override
    public List<Object> getListByCondition(String string, Date date, Date date1, int i) {
        return this.busRepository.getListByCondition(string, date, date1, i);
    }

    @Override
    public List<Object> getListByCondition(String string, String string1, Date date, Date date1, int i) {
        return this.busRepository.getListByCondition(string, string1, date, date1, i);
    }

 

}
