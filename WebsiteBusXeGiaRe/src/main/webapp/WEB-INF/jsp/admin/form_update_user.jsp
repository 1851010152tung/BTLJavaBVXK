<%-- 
    Document   : form_update_employee
    Created on : Dec 21, 2021, 2:08:28 AM
    Author     : Truc Lam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="right_col" role="main">
    <div class="">
                <div class="page-title">
                        <div class="title_left">
                                <h3>CẬP NHẬT THÔNG TIN NGƯỜI DÙNG</h3>
                        </div>

                      
                </div>
                <div class="clearfix"></div>
                <div class="row">
                    <div class="col-md-12 col-sm-12 " id="contain-form">
                                <div class="x_panel">
                                        <div class="x_title">
                                                <h2>FORM ĐĂNG KÝ <small>NGƯỜI DÙNG</small>
                                                    </h2>
                                                <ul class="nav navbar-right panel_toolbox">
                                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                                        </li>
                                                        <li class="dropdown">
                                                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                                                <ul class="dropdown-menu" role="menu">
                                                                        <li><a class="dropdown-item" href="#">Settings 1</a>
                                                                        </li>
                                                                        <li><a class="dropdown-item" href="#">Settings 2</a>
                                                                        </li>
                                                                </ul>
                                                        </li>
                                                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                                                        </li>
                                                </ul>
                                                <div class="clearfix"></div>
                                        </div>
                                        <div class="x_content">
                                                <br />

                                                <!-- Hien loi -->
                                                <c:if test="${errMsg != null}">

                                                    <div class="alert alert-danger">${errMsg}</div>

                                                </c:if>

                                                <form:form method="post" action="${action}" modelAttribute="user" id="demo-form2"  class="form-horizontal form-label-left"
                                                                    enctype="multipart/form-data">
                                                        <div class="item form-group">
                                                                <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Họ người dùng <span class="required">*</span>
                                                                </label>
                                                                <div class="col-md-6 col-sm-6 ">
                                                                    <form:input type="text" id="first-name" required="required" class="form-control" path="firstName"/>
                                                                </div>
                                                        </div>
                                                        <div class="item form-group">
                                                                <label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Tên người dùng <span class="required">*</span>
                                                                </label>
                                                                <div class="col-md-6 col-sm-6 ">
                                                                    <form:input type="text" id="last-name" name="last-name" required="required" class="form-control" path="lastName" />
                                                                </div>
                                                        </div>
                                                        <div class="item form-group">
                                                                <label for="username" class="col-form-label col-md-3 col-sm-3 label-align">Tên đăng nhập <span class="required">*</span> </label>
                                                                <div class="col-md-6 col-sm-6 ">
                                                                    <form:input id="middle-name" class="form-control" type="text" name="username" path="username"/>
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
                                                <label for="file" class="col-form-label col-md-3 col-sm-3 label-align">Hình ảnh </label>
                                                <div class="col-md-6 col-sm-6 ">
                                                    <c:if test="${user.avatar != null && user.avatar.startsWith('https') == true}">
                                                                <img class="img-fluid" id="size-image" src="${user.avatar}" alt="${user.lastName}"/>
                                                                <form:input id="file" Class="form-control" type="file" path="file"/>

                                                    </c:if>
                                                    <c:if test="${user.avatar == null || user.avatar.startsWith('https') == false}">
                                                              <form:input id="file" Class="form-control" type="file" path="file"/>

                                                    </c:if>            
                                                </div>
                                              </div>


                                                            <div class="button-form">
                                                            <div class="col-md-6 col-sm-6 offset-md-3" id="button-form-submit">
                                                                <form:button class="btn btn-primary" type="reset">Nhập lại</form:button>
                                                                <form:button type="submit" class="btn btn-success">Xác nhận</form:button>
                                                                </div>
                                                            </div>

                                                </form:form>
                                        </div>

                                </div>
                        </div>
                    </div>
        </div>

</div>


