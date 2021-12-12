<%-- 
    Document   : admin_form_employee
    Created on : Dec 11, 2021, 7:57:48 PM
    Author     : Truc Lam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="right_col" role="main">
            <div class="">
                        <div class="page-title">
                                <div class="title_left">
                                        <h3>ĐĂNG KÝ NHÂN VIÊN</h3>
                                </div>

                                <div class="title_right">
                                        <div class="col-md-5 col-sm-5  form-group pull-right top_search">
                                                <div class="input-group">
                                                        <input type="text" class="form-control" placeholder="Search for...">
                                                        <span class="input-group-btn">
                                                                <button class="btn btn-default" type="button">Go!</button>
                                                        </span>
                                                </div>
                                        </div>
                                </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="row">
                            <div class="col-md-12 col-sm-12 " id="contain-form">
                                        <div class="x_panel">
                                                <div class="x_title">
                                                        <h2>FORM ĐĂNG KÝ <small>NHÂN VIÊN BÁN VÉ</small></h2>
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
                                                        <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                                                                <div class="item form-group">
                                                                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="first-name">Họ nhân viên <span class="required">*</span>
                                                                        </label>
                                                                        <div class="col-md-6 col-sm-6 ">
                                                                                <input type="text" id="first-name" required="required" class="form-control ">
                                                                        </div>
                                                                </div>
                                                                <div class="item form-group">
                                                                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="last-name">Tên nhân viên <span class="required">*</span>
                                                                        </label>
                                                                        <div class="col-md-6 col-sm-6 ">
                                                                                <input type="text" id="last-name" name="last-name" required="required" class="form-control">
                                                                        </div>
                                                                </div>
                                                                <div class="item form-group">
                                                                        <label for="username" class="col-form-label col-md-3 col-sm-3 label-align">Tên đăng nhập <span class="required">*</span> </label>
                                                                        <div class="col-md-6 col-sm-6 ">
                                                                                <input id="middle-name" class="form-control" type="text" name="username">
                                                                        </div>
                                                                </div>
                                                                <div class="item form-group">
                                                                        <label for="phone" class="col-form-label col-md-3 col-sm-3 label-align">Số điện thoại <span class="required">*</span> </label>
                                                                        <div class="col-md-6 col-sm-6 ">
                                                                                <input id="middle-name" class="form-control" type="text" name="phone">
                                                                        </div>
                                                                </div>
                                                                <div class="item form-group">
                                                                        <label for="email" class="col-form-label col-md-3 col-sm-3 label-align">Email <span class="required">*</span> </label>
                                                                        <div class="col-md-6 col-sm-6 ">
                                                                                <input id="middle-name" class="form-control" type="text" name="email">
                                                                        </div>
                                                                </div>
                                                            
                                                                <div class="item form-group">
                                                                        <label class="col-form-label col-md-3 col-sm-3 label-align">Giới tính <span class="required">*</span> </label>
                                                                        <div class="col-md-6 col-sm-6 ">
                                                                                <div id="gender" class="btn-group" data-toggle="buttons">
                                                                                        <label class="btn btn-secondary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                                                                <input type="radio" name="gender" value="male" class="join-btn"> &nbsp; Nam &nbsp;
                                                                                        </label>
                                                                                        <label class="btn btn-primary" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                                                                                <input type="radio" name="gender" value="female" class="join-btn"> Nữ
                                                                                        </label>
                                                                                </div>
                                                                        </div>
                                                                </div>
                                                                <div class="item form-group">
                                                                        <label class="col-form-label col-md-3 col-sm-3 label-align">Ngày sinh <span class="required">*</span>
                                                                        </label>
                                                                        <div class="col-md-6 col-sm-6 ">
                                                                                <input id="birthday" class="date-picker form-control" placeholder="dd-mm-yyyy" type="text" required="required" type="text" onfocus="this.type='date'" onmouseover="this.type='date'" onclick="this.type='date'" onblur="this.type='text'" onmouseout="timeFunctionLong(this)">
                                                                                <script>
                                                                                        function timeFunctionLong(input) {
                                                                                                setTimeout(function() {
                                                                                                        input.type = 'text';
                                                                                                }, 60000);
                                                                                        }
                                                                                </script>
                                                                        </div>
                                                                </div>
                                                                <div class="ln_solid"></div>
                                                                <div class="item form-group">
                                                                        <div class="col-md-6 col-sm-6 offset-md-3">
                                                                                <button class="btn btn-primary" type="button">Hủy</button>
                                                                                <button class="btn btn-primary" type="reset">Nhập lại</button>
                                                                                <button type="submit" class="btn btn-success">Xác nhận</button>
                                                                        </div>
                                                                </div>

                                                        </form>
                                                </div>
                                        </div>
                                </div>
                        </div>

                       
                </div>
			</div>