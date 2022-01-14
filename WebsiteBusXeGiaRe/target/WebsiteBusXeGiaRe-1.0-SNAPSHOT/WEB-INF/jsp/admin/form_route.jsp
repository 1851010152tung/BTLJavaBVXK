<%-- 
    Document   : form_route
    Created on : Dec 12, 2021, 5:47:34 PM
    Author     : Truc Lam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:url value="/admin/routes" var="action" />
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
                            
                         <div class="item form-group">
                                <label class="col-form-label col-md-3 col-sm-3 label-align" for="journeyTime">Thời gian di chuyển <span class="required">*</span>
                                </label>
                                <div class="col-md-6 col-sm-6 ">
                                    <form:input type="text" id="journeyTime" name="journeyTime" required="required" class="form-control" path="journeyTime"/>
                                </div>
                            </div>                                  
                                
                                
                            
                            
                            <div class="item form-group">
                                <label for="ticketPrice" class="col-form-label col-md-3 col-sm-3 label-align">Giá vé </label>
                                <div class="col-md-6 col-sm-6 ">
                                    <form:input id="ticketPrice" class="form-control" type="text" name="ticketPrice" path="ticketPrice"/>
                                </div>
                            </div>
                                
                                
                            <div class="item form-group">
                                <label for="pickUpPoint" class="col-form-label col-md-3 col-sm-3 label-align">Điểm đón </label>
                                <div class="col-md-6 col-sm-6 ">
                                    <form:input id="pickUpPoint" class="form-control" type="text" name="pickUpPoint" path="pickUpPoint"/>
                                </div>
                            </div>
                                
                            <div class="item form-group">
                                <label for="dropOffPoint" class="col-form-label col-md-3 col-sm-3 label-align">Điểm trả </label>
                                <div class="col-md-6 col-sm-6 ">
                                    <form:input id="dropOffPoint" class="form-control" type="text" name="dropOffPoint" path="dropOffPoint"/>
                                </div>
                            </div>    
                                
                                
                                
                            
                            <div class="item form-group">
                                <label for="imageDeparture" class="col-form-label col-md-3 col-sm-3 label-align">Hình ảnh điểm khởi hành </label>
                                <div class="col-md-6 col-sm-6 ">
                                    <form:input id="imageDeparture" Class="form-control" type="file" path="fileDeparture"/>
                                </div>
                            </div>
                                
                                
                            <div class="item form-group">
                                <label for="imageDestination" class="col-form-label col-md-3 col-sm-3 label-align">Hình ảnh điểm đến </label>
                                <div class="col-md-6 col-sm-6 ">
                                    <form:input id="imageDestination" Class="form-control" type="file" path="fileDestination"/>
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



