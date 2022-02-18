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
            <li class="nav-item"><a href="<c:url value="/list_buses" />">NHÀ XE</a></li>
            
            <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
                <li class="nav-item"><a href="<c:url value="/admin/employees" />">QUẢN LÝ</a></li>
            </sec:authorize>
            
            <li><a href="<c:url value="/cart" ></c:url>" id="cart"><i class="fa fa-shopping-cart"></i><span class="badge" id="quantityTicket">${cartCounter}</span></a></li>
        
        </ul>
      </nav>
      
              
        
    <div class="navbar-right">
      
        
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
      
    </div>
            
      

    </header>