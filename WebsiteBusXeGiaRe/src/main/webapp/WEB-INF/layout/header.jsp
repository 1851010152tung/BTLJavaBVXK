<%-- 
    Document   : header
    Created on : Aug 22, 2021, 10:41:51 PM
    Author     : Truc Lam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <header>
        <img class="logo" src="<c:url value="/img/logo_busgiare.png"/>" alt="logo">
      <nav>
        <ul class="nav-links">
          <li class="nav-item active"><a href="<c:url value="/" />">TRANG CHỦ</a></li>
            <li class="nav-item"><a href="<c:url value="/home_routine" />">LỊCH TRÌNH</a></li>
            <li class="nav-item"><a href="#tintuc">TIN TỨC</a></li>
            <li class="nav-item"><a href="#vechungtoi">VỀ CHÚNG TÔI</a></li>
        </ul>
      </nav>
      
      
      <c:if test="${pageContext.request.userPrincipal.name == null}">
          <div class="button">
          <a class="sign-in" href="<c:url value="/login" />"> <button>ĐĂNG NHẬP</button></a>
          </div>
      </c:if>
      <!-- Nếu khác null thì gọi hiện tên đăng nhập -->
      <c:if test="${pageContext.request.userPrincipal.name != null}">
          <div class="button">
          <a class="user-name-sign-in" href="<c:url value="/" />"><button>${pageContext.request.userPrincipal.name}</button></a>
          </div>
      </c:if>
      

    </header>