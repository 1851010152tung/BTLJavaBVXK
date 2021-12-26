<%-- 
    Document   : form_update_route
    Created on : Dec 21, 2021, 2:08:48 AM
    Author     : Truc Lam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>ĐĂNG KÝ CHUYẾN ĐI</h3>
            </div>

            
        </div>
        <div class="clearfix"></div>
        <div class="row">
            <div class="col-md-12 col-sm-12 " id="contain-form">
                <div class="x_panel">
                    <div class="x_title">
                        <h2>FORM THÊM ĐIỂM KHỞI HÀNH   -   ĐIỂM ĐẾN</h2>
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
                        
                        <!-- Hien loi -->
                        <c:if test="${errMsg != null}">
                            
                            <div class="alert alert-danger">${errMsg}</div>
                            
                        </c:if>
                        <form:form method="post" action="${action}" modelAttribute="route" id="demo-form2"  class="form-horizontal form-label-left"
                                   enctype="multipart/form-data">
                            <!-- id="demo-form2" data-parsley-validate class="form-horizontal form-label-left"-->

                            <div class="item form-group">
                                <label class="col-form-label col-md-3 col-sm-3 label-align" for="departure">Điểm khởi hành <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 ">
                                    <form:input type="text" id="departure" required="required" class="form-control " path="departure" />
                                </div>
                            </div>
                            <div class="item form-group">
                                <label class="col-form-label col-md-3 col-sm-3 label-align" for="destination">Điểm đến <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 ">
                                    <form:input type="text" id="destination" name="destination" required="required" class="form-control" path="destination"/>
                                </div>
                            </div>
                            <div class="item form-group">
                                <label for="distance" class="col-form-label col-md-3 col-sm-3 label-align">Khoảng cách <span class="required">*</span> </label>
                                <div class="col-md-6 col-sm-6 ">
                                    <form:input id="distance" class="form-control" type="text" name="distance" path="distance" />
                                </div>
                            </div>
                            
<!--                            <div class="item form-group">
                                <label class="col-form-label col-md-3 col-sm-3 label-align">Thời gian di chuyển <span class="required">*</span>
                                </label>-->

<!--                                <div class="col-md-6 col-sm-6 ">

                                        <!form:input path="journeyTime" type="time" cssClass="form-control" id="journeyTime" />
                                                    <script>
                                                            function timeFunctionLong(input) {
                                                                    setTimeout(function() {
                                                                            input.type = 'text';
                                                                    }, 60000);
                                                            }
                                                    </script>
                                </div>
                                                        
                            </div>                                  -->
                                
                                
                            <div class="item form-group">
                                <label for="bus" class="col-form-label col-md-3 col-sm-3 label-align">Chuyến xe <span class="required">*</span> </label>
                                <div class="col-md-6 col-sm-6 ">
                                    <form:select  id="bus" class="form-control"  path="bus">
                                        
                                        <c:forEach items="${buses}" var="bus">
                                            <option value="${bus.idBus}">${bus.busName} - ${bus.categoryBus.name}</option>
                                        </c:forEach>
                                        

                                    </form:select>                                                                        
                                </div>
                            </div>

                            
                            <div class="item form-group">
                                <label for="ticketPrice" class="col-form-label col-md-3 col-sm-3 label-align">Giá vé </label>
                                <div class="col-md-6 col-sm-6 ">
                                    <form:input id="ticketPrice" class="form-control" type="text" name="ticketPrice" path="ticketPrice"/>
                                </div>
                            </div>
                                
                                
                                
                            
                            <div class="item form-group">
                                <label for="imageDeparture" class="col-form-label col-md-3 col-sm-3 label-align">Hình ảnh điểm khởi hành </label>
                                <div class="col-md-6 col-sm-6 ">
                                <c:if test="${route.imageDeparture != null && route.imageDeparture.startsWith('https') == true}">
                                    <img class="img-fluid" id="size-image" src="${route.imageDeparture}" alt="${route.departure}"/>
                                    <form:input id="fileDeparture" Class="form-control" type="file" path="fileDeparture"/>

                                </c:if>
                                <c:if test="${route.imageDeparture == null || route.imageDeparture.startsWith('https') == false}">
                                          <form:input id="fileDeparture" Class="form-control" type="file" path="fileDeparture"/>

                                </c:if>            
                            </div>
                          </div>
                                
                                
                            <div class="item form-group">
                                <label for="imageDestination" class="col-form-label col-md-3 col-sm-3 label-align">Hình ảnh điểm đến </label>
                                <div class="col-md-6 col-sm-6 ">
                                <c:if test="${route.imageDestination != null && route.imageDestination.startsWith('https') == true}">
                                    <img class="img-fluid" id="size-image" src="${route.imageDestination}" alt="${route.destination}"/>
                                    <form:input id="fileDestination" Class="form-control" type="file" path="fileDestination"/>

                                </c:if>
                                <c:if test="${route.imageDestination == null || route.imageDestination.startsWith('https') == false}">
                                          <form:input id="fileDestination" Class="form-control" type="file" path="fileDestination"/>

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

