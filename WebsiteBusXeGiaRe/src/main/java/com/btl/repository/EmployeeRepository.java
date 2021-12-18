/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.repository;

import com.btl.pojos.Employee;
import java.util.List;

/**
 *
 * @author Truc Lam
 */
public interface EmployeeRepository {
    List<Employee> getEmployees();
    boolean addOrUpdate(Employee employee);
    
}
