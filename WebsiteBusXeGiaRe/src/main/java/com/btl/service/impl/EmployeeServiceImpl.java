/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.service.impl;

import com.btl.pojos.Employee;
import com.btl.repository.EmployeeRepository;
import com.btl.service.EmployeeService;
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
public class EmployeeServiceImpl implements EmployeeService{

    @Autowired
    private EmployeeRepository employeeRepository;
    
    @Autowired
    private Cloudinary cloudinary;
    
    @Override
    public List<Employee> getEmployees() {
        return this.employeeRepository.getEmployees();
    }

    @Override
    public boolean addOrUpdate(Employee employee) {
        //Hứng giá trị bus từ getMapping ở trên
        //Xử lý upload
        try {
            if(employee.getIdEmployee()> 0) { //sua 
                if (employee.getFile().getBytes().length == 0) {
                    Employee b = this.employeeRepository.findById(employee.getIdEmployee());
                    employee.setImage(b.getImage());
                }else
                {
                    // Để hứng dữ liệu sau khi upload xong dùng Map
                            Map r = this.cloudinary.uploader().upload(employee.getFile().getBytes(),
                                    ObjectUtils.asMap("resource_type", "auto"));

                            employee.setImage((String) r.get("secure_url"));
                }
            }else{
                if(employee.getFile().getBytes().length !=0) {
                            // Để hứng dữ liệu sau khi upload xong dùng Map
                            Map r = this.cloudinary.uploader().upload(employee.getFile().getBytes(),
                                    ObjectUtils.asMap("resource_type", "auto"));

                            employee.setImage((String) r.get("secure_url"));
                }else
                {
                    employee.setImage("");
                }

            }
            //Gọi repository để lưu xuống
            return this.employeeRepository.addOrUpdate(employee);

            //Khi upload thành công tạm thời cho trở về trang chủ
            //return "redirect:/";
        } catch (IOException ex) {
            //Xuất lỗi
            System.err.println("Add employee " + ex.getMessage());
        }
        return false;
    }

    @Override
    public boolean delete(Employee employee) {
        return this.employeeRepository.delete(employee);
    }

    @Override
    public Employee findById(int id) {
        return this.employeeRepository.findById(id);
    }
    
    
}
