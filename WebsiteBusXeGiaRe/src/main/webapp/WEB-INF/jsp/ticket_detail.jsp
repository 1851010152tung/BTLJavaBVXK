<%-- 
    Document   : cart
    Created on : Jan 2, 2022, 10:03:05 PM
    Author     : Truc Lam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0">
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="<c:url value = "/css/cart.css" />"/>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700;800&display=swap" rel="stylesheet"/>
  </head>
 
  <body>
      
      <div class="wrap cf">
              <h1 class="projTitle">Đặt Vé Xe Khách</h1>
              <div class="heading cf">
                <h1>Giỏ hàng của bạn</h1>
<!--                <a href="#" class="continue">Tiếp tục đặt vé</a>-->
                    <a href="#" class="btn continue" onclick="payment(${customer.id})">Thanh toán</a>
                </div>
 
              
                
       </div>

  </body>
</html>
