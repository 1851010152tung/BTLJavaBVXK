<%-- 
    Document   : header
    Created on : Aug 22, 2021, 10:41:51 PM
    Author     : Truc Lam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <header>
      <img class="logo" src="http://127.0.0.1:5500/img/logo.png" alt="logo">
      <nav>
        <ul class="nav-links">
          <li class="nav-item active"><a href="#trangchu">TRANG CHỦ</a></li>
            <li class="nav-item"><a href="#lichtrinh">LỊCH TRÌNH</a></li>
            <li class="nav-item"><a href="#tintuc">TIN TỨC</a></li>
            <li class="nav-item"><a href="#vechungtoi">VỀ CHÚNG TÔI</a></li>
        </ul>
      </nav>
      <div class="button">
          <a class="sign-in" href="<c:url value="/login" />"> <button>ĐĂNG NHẬP</button></a>
      </div>

    </header>