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
    <link rel="stylesheet" type="text/css" href="<c:url value = "/css/admin_sidebar_menu.css" />"/>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700;800&display=swap" rel="stylesheet"/>
  </head>
 
  <body>
      
      <div class="wrap cf">
              <h1 class="projTitle">Đặt Vé Xe Khách</h1>
              <div class="heading cf">
                <h1>Giỏ hàng của bạn</h1>
                <a href="#" class="continue">Tiếp tục đặt vé</a>
                </div>
              
              <c:url value="/passenger" var="action" />
              

            <form:form method="post" action="${action}" modelAttribute="customer" id="demo-form2"  class="form-horizontal form-label-left"
                                enctype="multipart/form-data">
                    <div class="item form-group">
                            <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Họ khách hàng <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                                <form:input type="text" id="first-name" required="required" class="form-control" path="firstName"/>
                            </div>
                    </div>
                    <div class="item form-group">
                            <label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Tên khách hàng <span class="required">*</span>
                            </label>
                            <div class="col-md-6 col-sm-6 ">
                                <form:input type="text" id="last-name" name="last-name" required="required" class="form-control" path="lastName" />
                            </div>
                    </div>


                    <div class="item form-group">
                            <label for="phone" class="col-form-label col-md-3 col-sm-3 label-align">Số điện thoại <span class="required">*</span> </label>
                            <div class="col-md-6 col-sm-6 ">
                                <form:input id="middle-name" class="form-control" type="text" name="phone" path="phone"/>
                            </div>
                    </div>
                    <div class="item form-group">
                            <label for="email" class="col-form-label col-md-3 col-sm-3 label-align">Email <span class="required">*</span> </label>
                            <div class="col-md-6 col-sm-6 ">
                                <form:input id="middle-name" class="form-control" type="text" name="email" path="email"/>
                            </div>
                    </div>

                    <div class="item form-group">
                            <label class="col-form-label col-md-3 col-sm-3 label-align">Giới tính <span class="required">*</span> </label>
                            <div class="col-md-6 col-sm-6 ">
                                <div id="gender" class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-secondary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                        <form:radiobutton class="join-btn" path="gender" value="Nam"/> Nam
                                    </label>
                                    <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                        <form:radiobutton class="join-btn" path="gender" value="Nữ" /> Nữ
                                    </label>
                                </div>

                            </div>
                    </div>
                                    
                    <div class="item form-group">
                            <label for="identityCard" class="col-form-label col-md-3 col-sm-3 label-align">CMND/CCCD <span class="required">*</span> </label>
                            <div class="col-md-6 col-sm-6 ">
                                <form:input id="middle-name" class="form-control" type="text" name="email" path="identityCard"/>
                            </div>
                    </div>

                    <div class="item form-group">
                            <label for="email" class="col-form-label col-md-3 col-sm-3 label-align">Ghi chú <span class="required">*</span> </label>
                            <div class="col-md-6 col-sm-6 ">
                                    <form:textarea id="message" required="required" class="form-control" name="description" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Bạn cần nhập ít nhất 20 ký tự..." data-parsley-validation-threshold="10" path="note"  />
                            </div>
                    </div>


                    <div class="button-form">
                        <div class="col-md-6 col-sm-6 offset-md-3" id="button-form-submit">
                            <form:button class="btn btn-primary" type="reset">Nhập lại</form:button>
<!--                             <li class="totalRow"><a href="/passenger" class="btn continue" onclick="payment($!{currentUser.id})" >Đặt vé</a></li>                                -->
                           <form:button type="submit" class="btn btn-success" >Đặt vé</form:button>
                            </div>
                    </div>

            </form:form>          


              
                
       </div>

  </body>
</html>
