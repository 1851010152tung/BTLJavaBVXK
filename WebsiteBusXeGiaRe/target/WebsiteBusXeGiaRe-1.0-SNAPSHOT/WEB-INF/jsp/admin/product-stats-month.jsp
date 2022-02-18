<%-- 
    Document   : product-stats-month
    Created on : Feb 13, 2022, 2:32:22 PM
    Author     : ASUS-LAPTOP
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<div class="right_col" role="main">
    
    <div class="page-title">
                        <div class="title_left">
                                <h3>THỐNG KÊ DOANH THU</h3>
                        </div>

                 
                </div>
        <div class="clearfix"></div>
                <div class="row">

                    <div class="col-md-12 col-sm-12  " id="table-buses">
                            <div class="x_panel">
                              <div class="x_title">
                                <h2>DOANH THU THEO THÁNG</h2>
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



                                  <div class="content-padding" style="padding: 10px 120px;">
                                <h1 class="text-center text-danger"></h1>
                                <form action="">
<!--                                    <div class="form-group">
                                        <label  class="timestats">Từ khóa</label> comment 
                                        <input type="text" name="kw" class="form-control"/>

                                    </div>-->
                                    <div class="form-group">
                                        <label class="timestats">Từ thời điểm</label><!-- comment -->
                                        <input type="date" name="fromDate" class="form-control"/>
                                    </div>
                                    <div class="form-group">
                                        <label class="timestats">Đến thời điểm</label><!-- comment -->
                                        <input type="date" name="toDate" class="form-control"/>

                                    </div>
                                    <input type="submit" value="Báo cáo" class="btn btn-success"/>
                                </form>
                                <div class="chart-size" >
                                    <canvas id="myProductStatsMonthChart" style="margin-bottom: 50px; margin-top: 50px"></canvas>
                                    </div>
                                    <table class="table table-striped jambo_table bulk_action">
                                        <thead>
                                            <tr class="headings">
                                                <th class="column-title">Tháng</th>
                                                <th class="column-title">Doanh thu</th>
                                        </tr>
                                        </thead>
                                         <c:forEach items="${productStatsMonth}" var="b">
                                            <tr>
                                                <td>${b[0]}/${b[1]} </td> 
                                                <td>${b[12]} VND </td>
                                            </tr>
                                        </c:forEach> 
                                    </table>
                                  <script>
                                let productLabels=[], productInfo=[];
                                <c:forEach items="${productStatsMonth}" var="c">
                                    productLabels.push('${c[0]} - ${c[1]}')
                                    productInfo.push(${c[12]})
                                </c:forEach>
                                window.onload = function(){
                                    productMonthChart("myProductStatsMonthChart", productLabels,productInfo);
                                }
                            </script>
                            </div>
                            </div>
                            </div>
                          </div>
                </div>
        

        
        
</div>


