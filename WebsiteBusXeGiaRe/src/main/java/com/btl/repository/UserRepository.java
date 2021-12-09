/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.btl.repository;


import com.btl.pojos.User;
import java.util.List;


public interface UserRepository {
    boolean addUser(User user);
    //phuong thuc tim username
    List<User>getUsers(String username);
    
}
