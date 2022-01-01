/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


package com.btl.service;

import com.btl.pojos.User;
import java.util.List;
import org.springframework.security.core.userdetails.UserDetailsService;


public interface UserService extends UserDetailsService {
    boolean addUser(User user);
    //phuong thuc tim username
    List<User>getUsers(String username);
    boolean updateUserRole(User user);
    User getUserByUsername(String username);
    
    
}
