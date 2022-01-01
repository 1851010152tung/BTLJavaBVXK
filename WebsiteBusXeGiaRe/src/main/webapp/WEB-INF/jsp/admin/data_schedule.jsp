<%-- 
    Document   : data_schedule
    Created on : Dec 21, 2021, 2:07:22 AM
    Author     : Truc Lam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<div class="right_col" role="main">
    
    <div class="page-title">
                        <div class="title_left">
                                <h3>BẢNG DỮ LIỆU LỊCH CHẠY</h3>
                        </div>

                        <div class="title_right">
                                <div class="col-md-5 col-sm-5  form-group pull-right top_search">
                                        <div class="input-group">
                                                <input type="text" class="form-control" placeholder="Tìm kiếm lịch chạy...">
                                                <span class="input-group-btn">
                                                        <button class="btn btn-default" type="button">Go!</button>
                                                </span>
                                        </div>
                                </div>
                        </div>
                </div>
        <div class="clearfix"></div>
                <div class="row">

                    <div class="col-md-12 col-sm-12  " id="table-buses">
                            <div class="x_panel">
                              <div class="x_title">
                                <h2>Cập nhật<small>lịch trình</small></h2>
                                <ul class="nav navbar-right panel_toolbox">
                                  <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                  </li>
                                  <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <a class="dropdown-item" href="#">Settings 1</a>
                                        <a class="dropdown-item" href="#">Settings 2</a>
                                      </div>
                                  </li>
                                  <li><a class="close-link"><i class="fa fa-close"></i></a>
                                  </li>
                                </ul>
                                <div class="clearfix"></div>
                              </div>

                              <div class="x_content">


                                <div class="table-responsive">
                                  <table class="table table-striped jambo_table bulk_action">
                                    <thead>
                                      <tr class="headings">
<!--                                        <th>
                                          <input type="checkbox" id="check-all" class="flat">
                                        </th>-->
                                        <th class="column-title" id="col-num">Id </th>
                                        <th class="column-title">Tuyến xe </th>
                                        <th class="column-title">Ngày khởi hành </th>
                                        <th class="column-title">Ngày về </th>
                                        <th class="column-title">Giờ khởi hành</th>
                                        <th class="column-title">Chuyến xe </th>                                       
                                   
                                        
                                        <th class="column-title no-link last  a-right a-right"><span class="nobr ">Action</span>
                                        </th>
                                        <th class="bulk-actions" colspan="7">
                                          <a class="antoo" style="color:#fff; font-weight:500;">Bulk Actions ( <span class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
                                        </th>
                                      </tr>
                                    </thead>

                                    <tbody>
                                        <c:forEach var="s" items="${schedules}">
                                      <tr class="even pointer">
<!--                                        <td class="a-center ">
                                          <input type="checkbox" class="flat" name="table_records">
                                        </td>-->
                                        <td class=" ">${s.id}</td>
                                        <td class=" ">${s.route.departure} - <br>  ${s.route.destination}</td>
                                        <td class=" ">${s.departureDate}</td>
                                        <td class=" ">${s.destinationDate}</td>
                                        <td class=" ">${s.departureTime}</td>                                        
                                        <td class=" ">${s.route.bus.busName} - ${s.route.bus.categoryBus.name}</td>
                                       
                                        
                                        

                                        <td class=" last a-right a-right ">
                                            <div class="btn-edit">
                                                <a class="btn btn-default" href=" <c:url value="data_schedules/update?id=${s.id}" />"><span class="glyphicon glyphicon-pencil"></span></a>
                                                <a class="btn btn-default" href="<c:url value="data_schedules/delete?id=${s.id}"/>"><span class="glyphicon glyphicon-trash"></span></a>                                                
                                            </div>
                                        </td>
                                      </tr>
                                        </c:forEach>

                                    </tbody>
                                  </table>
                                </div>


                              </div>
                            </div>
                          </div>
                </div>
        
        
        
</div>

