<%-- 
    Document   : product-stats-period
    Created on : Feb 15, 2022, 10:00:00 PM
    Author     : ASUS-LAPTOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>-->
<!DOCTYPE html>

<div class="right_col" role="main">
    
    <div class="page-title">
                        <div class="title_left">
                                <h3>THỐNG KÊ DOANH THU</h3>
                        </div>

                        <div class="title_right">
                                <form action="">
                                
                                <div class="col-md-5 col-sm-5  form-group pull-right top_search">
                                        <div class="input-group">
                                                <input type="text" class="form-control" name="kw" placeholder="Tìm kiếm ...">
                                                <span class="input-group-btn">
                                                    <button class="btn btn-default" value="Search" type="submit">Tìm!</button>
                                                </span>
                                        </div>
                                </div>
                                
                            </form>
                        </div>
                </div>
        <div class="clearfix"></div>
                <div class="row">

                    <div class="col-md-12 col-sm-12  " id="table-buses">
                            <div class="x_panel">
                              <div class="x_title">
                                <h2>DOANH THU THEO QUÝ</h2>
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

                            <div class="content">
                                    <div class="container-fluid">
                                        <div class="filter input-group mb-3">
                                            <nav class="nav-menu d-none d-lg-block">
                                                <ul>
                                                    <!-- THE LEVEL FILTER OF CONDITIONS -->
                                                    <li class="drop-down"><a href="<c:url value="/admin/product-stats-period"/>">ĐIỀU KIỆN THEO MÙA</a>
                                                        <ul class="scrolltable">                     
                                                            <li><a href=""><input type="radio" name="rbdM" value="spring" />&nbsp;&nbsp;XUÂN</a></li>
                                                            <li><a href=""><input type="radio" name="rbdM" value="summer"/>&nbsp;&nbsp;HẠ</a></li>
                                                            <li><a href=""><input type="radio" name="rbdM" value="fall"/>&nbsp;&nbsp;THU</a></li>
                                                            <li><a href=""><input type="radio" name="rbdM" value="winter" />&nbsp;&nbsp;ĐÔNG</a></li>
                                                        </ul>
                                                    </li>
                                                    <!-- THE SALARY FILTER OF CONDITIONS -->
                                                    <li class="drop-down"><a href="<c:url value="/admin/product-stats-period"/>">ĐIỀU KIỆN THEO NĂM</a>
                                                        <ul class="scrolltable">                     
                                                            <li><a href=""><input type="radio" name="rdbY" value="2021" />&nbsp;&nbsp;2021</a></li>
                                                            <li><a href=""><input type="radio" name="rdbY" value="2022" />&nbsp;&nbsp;2022</a></li>

                                                        </ul>
                                                    </li>
                                                </ul>
                                            </nav>

                                        </div>
                                        <div class=" input-group mb-3">
                                               <button type="button"
                                                        class="btn btn-success" onclick="sendCondition()">Báo cáo
                                                </button>
                                        </div>
                                                        
                                           
                                                        <div class="card-body" style="width: 400px">
                                                        <canvas id="doughnutchart"></canvas>  
                                                    </div>
                                                        
                                         
                                                    <div class="card-body ">
                                                        <div class="ct-chart">
                                                            <table id="chartTable" class="table table-striped jambo_table bulk_action">
                                                                <thead id="title-Table">
                                                                <tr class="headings">
<!--                                                                        <th>Id</th>-->
                                                                        <th>Số lượng</th>
                                                                        <th>Tháng</th>
                                                                        <th>Doanh thu</th>
                                                                </tr>
                                                                </thead>
                                                               <c:forEach items="${productStatsPeriodd}" var="b">
                                                                    <tr>
<!--                                                                        <td>$!{b[2]}</td>-->
<!--                                                                        <td>$@{b[9]} - $@{b[10]}</td>-->
                                                                        <td>${b[5]}</td>
                                                                        <td>${b[0]}/${b[1]} </td>
                                                                        <td>${b[13]} VND </td>
                                                                    </tr>
                                                                </c:forEach> 
                                                            </table>
                                                        </div>
                                                    </div>
                                       
                                      
                                    </div>
                                </div>  

                              </div>
                            </div>
                          </div>
                </div>
        
<!--         <script>

            let cvLabels=[], cvInfo=[];
            <!c:forEach items="$!{productStatsPeriod}" var="b">
                cvLabels.push('$!{b[9]} - $!{b[10]}')
                cvInfo.push($!{b[5]});
            </!c:forEach>
            window.onload = function(){
                cateChart("doughnutchart", cvLabels,cvInfo)
            }
            
            
        </script>  -->
        
</div>
