/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.btl.repository;

import com.btl.pojos.Comment;
import java.util.List;

/**
 *
 * @author Truc Lam
 */
public interface CommentRepository {
    long totalItem(int id);
    Comment addComment(Comment comment, int idComment);
    List<Object[]> getListComment(int idBus, int page);
}
