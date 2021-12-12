<%-- 
    Document   : admin
    Created on : Dec 11, 2021, 2:27:51 AM
    Author     : Truc Lam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="btn">
         <span class="fas fa-bars"></span>
      </div>
      <nav class="sidebar">
         <div class="text">
            Side Menu
         </div>
         <ul>
            <li class="active"><a href="#">Dashboard</a></li>
            <li>
               <a href="#" class="feat-btn">Features
               <span class="fas fa-caret-down first"></span>
               </a>
               <ul class="feat-show">
                  <li><a href="#">Pages</a></li>
                  <li><a href="#">Elements</a></li>
               </ul>
            </li>
            <li>
               <a href="#" class="serv-btn">Services
               <span class="fas fa-caret-down second"></span>
               </a>
               <ul class="serv-show">
                  <li><a href="#">App Design</a></li>
                  <li><a href="#">Web Design</a></li>
               </ul>
            </li>
            <li><a href="#">Portfolio</a></li>
            <li><a href="#">Overview</a></li>
            <li><a href="#">Shortcuts</a></li>
            <li><a href="#">Feedback</a></li>
         </ul>
      </nav>
      <div class="content">
         <div class="header">
            Sidebar Menu with sub-menu
         </div>
         <p>
            HTML CSS & Javascript (Full Tutorial)
         </p>
      </div>