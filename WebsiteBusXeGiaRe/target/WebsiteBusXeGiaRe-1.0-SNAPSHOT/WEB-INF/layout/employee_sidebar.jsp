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
                 
                  
                  <li><a><i class="fa fa-table"></i> Bảng dữ liệu <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">

                        <li><a href="<c:url value ="/employee/data_schedules_driver"></c:url>">Lịch trình nhân viên</a></li>


                    </ul>
                  </li>
                
                  
                </ul>
              </div>


            </div>
            <!-- /sidebar menu -->

            
          </div>
        </div>
        

      </div>
    </div>