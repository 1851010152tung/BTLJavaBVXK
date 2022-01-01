<%-- 
    Document   : form_update_schedule
    Created on : Dec 21, 2021, 2:09:10 AM
    Author     : Truc Lam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:url value="/admin/schedules" var="action" />
<div class="right_col" role="main">
    <div class="">
                <div class="page-title">
                        <div class="title_left">
                                <h3>ĐĂNG KÝ LỊCH CHẠY</h3>
                        </div>

                      
                </div>
                <div class="clearfix"></div>
                <div class="row">
                    <div class="col-md-12 col-sm-12 " id="contain-form">
                                <div class="x_panel">
                                        <div class="x_title">
                                                <h2>FORM ĐĂNG KÝ <small>LỊCH TRÌNH</small>
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

                                                <form:form method="post" action="${action}" modelAttribute="schedule" id="demo-form2"  class="form-horizontal form-label-left"
                                                                    enctype="multipart/form-data">
                                                        <div class="item form-group">
                                                            <label for="bus" class="col-form-label col-md-3 col-sm-3 label-align">Tuyến xe <span class="required">*</span> </label>
                                                            <div class="col-md-6 col-sm-6 ">
                                                                <form:select  id="bus" class="form-control"  path="route.id">

                                                                    <c:forEach items="${routes}" var="r">
                                                                        <form:option value="${r.id}">${r.departure} - ${r.destination}</form:option>
                                                                    </c:forEach>

                                                                </form:select>                                                                        
                                                            </div>
                                                        </div>
                                   
                                        <div class="item form-group">
                                                            <label class="col-form-label col-md-3 col-sm-3 label-align">Ngày khởi hành <span class="required">*</span>
                                                            </label>
                                                            
                                                            <div class="col-md-6 col-sm-6 ">
                                                                            
                                                                    <form:input type="date" cssClass="form-control" id="departureDate" path="departureDate"/>
                                                                                <script>
                                                                                        function timeFunctionLong(input) {
                                                                                                setTimeout(function() {
                                                                                                        input.type = 'text';
                                                                                                }, 60000);
                                                                                        }
                                                                                </script>
                                                                        </div>
                                                        
                                                        </div>
                                                        <div class="item form-group">
                                                            <label class="col-form-label col-md-3 col-sm-3 label-align">Ngày về <span class="required">*</span>
                                                            </label>
                                                            
                                                            <div class="col-md-6 col-sm-6 ">
                                                                            
                                                                    <form:input type="date" cssClass="form-control" id="destinationDate" path="destinationDate"/>
                                                                                <script>
                                                                                        function timeFunctionLong(input) {
                                                                                                setTimeout(function() {
                                                                                                        input.type = 'text';
                                                                                                }, 60000);
                                                                                        }
                                                                                </script>
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




