<%-- 
    Document   : admin_sidebar
    Created on : Dec 10, 2021, 2:09:23 AM
    Author     : Truc Lam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container body">
      <div class="main_container">
          
        <div class="col-md-3 left_col" id="left-sidebar">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-bus"></i> <span>BUSGIARE.COM</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
<!--            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/default.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Xin chào,</span>
                <h2>Username</h2>
              </div>
            </div>-->
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>Tiện ích</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="<c:url value="/"></c:url>">Dashboard</a></li>
                      
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> Đăng ký thông tin <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<c:url value ="/admin/employees"></c:url>">Nhân viên</a></li>
<!--                      <li><a href="form.html">Khách hàng</a></li>-->
                      <li><a href="<c:url value="/admin/buses"/>"> Chuyến xe</a></li>
                      <li><a href="<c:url value="/admin/routes"/>">Tuyến xe</a></li>
                      <li><a href="<c:url value="/admin/schedules"/>">Lịch trình</a></li>
<!--                      <li><a href="form.html">Thông tin đặt vé</a></li>-->


                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i> Thư viện <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="general_elements.html">General Elements</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-table"></i> Bảng dữ liệu <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="<c:url value ="/admin/data_employees"></c:url>">Nhân viên</a></li>
                        <li><a href="form.html">Khách hàng</a></li>
                        <li><a href="<c:url value ="/admin/data_buses"></c:url>">Chuyến xe</a></li>
                        <li><a href="<c:url value ="/admin/data_routes"></c:url>">Tuyến xe</a></li>
                        <li><a href="<c:url value ="/admin/data_schedules"></c:url>">Lịch trình</a></li>
                        <li><a href="form.html">Doanh thu</a></li>
                        <li><a href="<c:url value="/admin/data_booking"/>">Thông tin đặt vé</a></li>

                    </ul>
                  </li>
                  <li><a><i class="fa fa-bar-chart-o"></i> Thống kê <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="<c:url value ="/admin/category-state"></c:url>">Thống kê mật độ chuyến xe theo tuyến xe</a></li>
             
                     <li><a href="<c:url value ="/admin/product-stats"></c:url>">Thống kê doanh thu theo ngày</a></li>
                      <li><a href="<c:url value ="/admin/product-stats-month"></c:url>">Thống kê doanh thu theo tháng</a></li>
                    </ul>
                  </li>
                  
                </ul>
              </div>


            </div>
            <!-- /sidebar menu -->

            
          </div>
        </div>
        

        <!-- top navigation -->

        <!-- /top navigation -->

        <!-- page content -->
        
         

        <!-- /page content -->

        <!-- footer content -->
        
        <!-- /footer content -->
      </div>
    </div>