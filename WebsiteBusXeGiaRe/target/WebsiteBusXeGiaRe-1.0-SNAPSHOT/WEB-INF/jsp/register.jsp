<%-- 
    Document   : register
    Created on : Aug 27, 2021, 3:07:51 AM
    Author     : Truc Lam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url value="/register" var="action"/>

<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0">
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="<c:url value = "/css/register.css" />"/>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700;800&display=swap" rel="stylesheet"/>
  </head>
 
<body>
<div class="main">
    
      <div class="container a-container" id="a-container">
          
          <c:if test="${errMsg !=null}">
              <div class = "alert alert-danger">
                  ${errMsg}
              </div>
          </c:if>
                
          
          <form:form class="form" id="a-form" method="post" action="${action}" modelAttribute = "user">
              <h2 class="form_title title">Tạo tài khoản</h2>
              <span class="form__span">Sử dụng email để đăng ký</span>
              <div class="form__input_name">
                    <form:input class="form__input" type="text" placeholder="Họ" path="firstName"/>
                    <form:input class="form__input" type="text" placeholder="Tên" path="lastName"/>
              </div>
              <form:input class="form__input" type="text" placeholder="Username" path="username"/>
              <form:input class="form__input" type="email" placeholder="Email" path="email"/>
              <form:input class="form__input" type="text" placeholder="Số điện thoại" path="phone"/>
              <form:input class="form__input" type="password" placeholder="Mật khẩu" path="password"/>
              <form:input class="form__input" type="password" placeholder="Xác nhận mật khẩu" path="confirmPassword"/>
              <div class="form__input">
                <form:input id="file" Class="form-control" type="file" path="file"/>
              </div>
               <form:button class="form__button button submit"> <!--a href="<!c:url value="/login"/>"-->ĐĂNG KÝ</a></form:button>
<!--                <div class="container-login100-form-btn">
                            <button type="submit" class="login100-form-btn">SIGN UP</button>
                        </div>-->
        </form:form>
      </div>
     
          
          <!-- Chuyển đổi qua lại giữa Đăng nhập và Đăng ký -->
      <div class="switch" id="switch-cnt">
        <div class="switch__circle"></div>
        <div class="switch__circle switch__circle--t"></div>
        <div class="switch__container" id="switch-c1">
          <h2 class="switch__title title">Cùng đi nào !</h2>
          <p class="switch__description description">Đăng nhập để bắt đầu hành trình <br> cùng chúng tôi!</p>
          <div class ="">
          <a class="sign-in" href="<c:url value="/login" />"> <button class="switch__button button switch-btn" >ĐĂNG NHẬP</button>
          </div>
        </div>
         
      </div>
 </div>
          
</body>
</html>