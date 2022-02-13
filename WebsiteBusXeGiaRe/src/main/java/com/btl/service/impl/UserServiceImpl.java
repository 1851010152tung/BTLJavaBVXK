/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


package com.btl.service.impl;

import com.btl.pojos.User;
import com.btl.repository.UserRepository;
import com.btl.service.UserService;
import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

/**
 *
 * @author Truc Lam
 */
 

@Service("userDetailsService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    //Trước khi gửi vào Repository cần băm mật khẩu
    private BCryptPasswordEncoder passwordEncoder;
    
    @Autowired
    private Cloudinary cloudinary;
    
    
    @Override
    public boolean addUser(User user) {
        try {
            if(user.getId() > 0)
            {
                if(user.getFile().getBytes().length == 0)
                {
                    User u = this.userRepository.findById(user.getId());
                    user.setAvatar(u.getAvatar());
                }else
                {
                    Map m = this.cloudinary.uploader().upload(user.getFile().getBytes(), 
                            ObjectUtils.asMap("resource_type","auto"));
                    user.setAvatar((String) m.get("secure_url"));
                    
                }
                
            }else {
                if(user.getFile().getBytes().length == 0)
                {
                    String pass = user.getPassword();
                    user.setPassword(this.passwordEncoder.encode(pass));
                    //set vai tro
                    user.setUserRole(User.USER);
                
                
                    if(user.getFile().getBytes().length !=0)
                    {
                        Map m = this.cloudinary.uploader().upload(user.getFile().getBytes(),
                                ObjectUtils.asMap("resource_type","auto"));

                        user.setAvatar((String) m.get("secure_url"));
                        user.setUserRole(user.getUserRole());
                    }else
                    {
                        return false;
                    }
                }else{
                    user.setAvatar("");
                }
                
        
            return this.userRepository.addUser(user);
            }
            
        } catch (Exception e) {
        }
        return false;
        
       

    }

    @Override
    public List<User> getUsers(String username) {
        return this.userRepository.getUsers(username);

    }

    //Trả ra phương thức userDetailsService trong SpringSecurityConfig.java
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        List<User> users = this.getUsers(username);
        if(users.isEmpty())
            throw new UsernameNotFoundException("Tên người dùng không tồn tại!!");
        
        User user = users.get(0);
        Set<GrantedAuthority> auth = new HashSet<>();
        auth.add(new SimpleGrantedAuthority(user.getUserRole()));
        
        return new org.springframework.security.core.userdetails.User(user.getUsername(),user.getPassword(), auth);
//Khi trùng tên thì phải chỉ định full đường dẫn
//Mọi thao tác chứng thực, phân quyền sẽ giao lại cho userdetails
        
        

    }

    @Override
    public User getUserByUsername(String username) {
        return this.userRepository.getUserByUsername(username);
    }

    @Override
    public boolean updateUserRole(User user) {
        return this.userRepository.updateUser(user);
    }

    @Override
    public User findById(int i) {
        return this.userRepository.findById(i);
    }
    
}
