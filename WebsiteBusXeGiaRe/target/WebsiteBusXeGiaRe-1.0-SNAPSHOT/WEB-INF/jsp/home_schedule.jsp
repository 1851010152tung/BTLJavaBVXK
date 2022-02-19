<%-- 
    Document   : home_routine
    Created on : Dec 23, 2021, 3:01:44 PM
    Author     : Truc Lam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0">
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="<c:url value = "/css/home_routine.css" />"/>
    <link rel="stylesheet" type="text/css" href="<c:url value = "/css/homebase.css" />"/>

    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700;800&display=swap" rel="stylesheet"/>
  </head>
 
  <body>
        

<div>
    
        <div class="table-responsive" >
           
            <div class="flex-center">
                 <div class="title_right">
<!--                                <form action="">
                                
                                    <div class="form-group">
                                        <label  class="timestats">Điểm đi</label>
                                        <input type="text" name="kw" class="form-control"placeholder="Tìm kiếm điểm đi..."/>

                                    </div>
                                    
                                 <div class="form-group">
                                        <label  class="timestats">Điểm đến</label>
                                        <input type="text" name="kw2" class="form-control"placeholder="Tìm kiếm điểm đến..."/>

                                    </div>
                                <div class="form-group">
                                        <label class="timestats">Từ thời điểm</label>
                                        <input type="date" name="fromDate" class="form-control"/>
                                </div>
                                <div class="form-group">
                                        <label class="timestats">Đến thời điểm</label>
                                        <input type="date" name="toDate" class="form-control"/>

                                </div>
                                
                                <input type="submit" value="Tra cứu" class="btn btn-success"/>

                                
                            </form>-->

        <div class="contain-form">
            <div class="">
                <section id="first-tab-group" class="tabgroup">
                    <div id="tab1">
                        <div class="submit-form">

                            <div class="row">

                                <h4>Tìm chuyến trực tuyến:</h4>
                               
                            </div>


                            <form id="form-submit" action="">

                                <div class="row">
                                    <!--ĐIỂM ĐẾN/ĐIỂM ĐI-->
                                    <div class="place-from-to">
                                        <div class="col-md-6">
                                            <fieldset class="fieldset-location">
                                                <label for="from">Điểm đi</label>
<!--                                               <select required name='from' onchange='this.form'>
                                                    <option value="">Chọn địa điểm...</option>

                                                </select>-->

                                                <input name="kw" type="text" class="form-control"placeholder="Điểm đi"/>

                                                
                                            </fieldset>
                                        </div>
                                        <div class="col-md-6">
                                            <fieldset class="fieldset-location">
                                                <label for="to">Điểm đến</label>
<!--                                                <select required name='to' onchange='this.form'>
                                                    <option value="">Chọn địa điểm...</option>
                                                    
                                                </select>-->
                                            <input name="kw2" type="text" class="form-control"placeholder="Điểm đến"/>

                                            </fieldset>
                                        </div>
                                    </div>

                                    <!--NGÀY ĐẾN/NGÀY VỀ-->
                                    <div class="datetime">

                                        <div class="col-md-6" id="datetime">

                                            <fieldset class="fieldset-date">
                                                <label for="departure">Ngày đi</label>
                                                <input name="fromDate" type="date" class="form-control date" id="deparure" placeholder="Chọn ngày..." required="">
                                            </fieldset>
                                        </div>
                                        <div class="col-md-6" id="datetime">
                                            <fieldset class="fielset-date">
                                                <label for="return">Ngày về</label>
                                                <input name="toDate" type="date" class="form-control date" id="return" placeholder="Chọn ngày..." required="" >
                                            </fieldset>
                                        </div>

                                    </div>

                                    <!--BUTTON TÌM CHUYẾN XE-->

                                    <div class="submit-btn">

                                        <div class="col-md-6">
                                            <fieldset>
                                                <a href="<c:url value="/home_schedule"/>">
                                                <button  id="form-submit" class="btn">Tra cứu</button>
                                                </a>
                                            </fieldset>
                                        </div>
                                    </div>


                                </div>

                            </form>


                        </div>
                    </div>
                </section>
            </div>
        </div>





                        </div>
                <div class="table-routine">
                    
                    <table class="table table-striped jambo_table bulk_action">
                        <thead id="header-table">
                        <tr class="headings">
                          <th class="column-title">Tuyến xe</th>
                          <th class="column-title">Nhà xe</th>
                          <th class="column-title">Quãng đường</th>
                          <th class="column-title">Ngày khởi hành</th>
                          <th class="column-title">Giá vé</th>                                        
                          <th class="column-title">Đặt vé</th>                                       
                          <th class="end"></th>                                      


                        </tr>
                      </thead>
                    </table>

           
                
                 <c:forEach var="s" items="${schedules}" >                     
            <div class="groups">
                <table class="table table-striped jambo_table bulk_action">
                    <thead>
                        <tr class="title-departure">
                            <th colspan="10" class="text">${s[1]} =>
                            </th>
                        </tr>
                    </thead>   
                
                
            <tbody>
              <tr class="headings">

                <td class="column-title ">${s[2]}</td>
               <td class="column-title ">${s[5]} - ${s[7]}</td>
                <td class="column-title ">${s[3]} km</td>
                <td class="column-title ">${s[8]} - ${s[9]}</td>
                <td class="column-title price">${s[4]}</td>                                        
                <td class="column-title ">
                    <a class="user-name-sign-in" href="javascript:;" onclick="addToCart(${s[0]}, '${s[1]}','${s[2]}','${s[5]}','${s[7]}' 
                       ,${s[4]}, ${s[6]}, ${s[8]}, '${s[9]}')">
                    <button data-v-62c8fe4c="" class="time-detail" >Đặt vé
                        <i data-v-62c8fe4c="" class="fa fa-info-circle" style="font-size: 18px;"></i>
                    </button>
                    </a>
                </td>
                <td class="end"></td>

                
              </tr>

            </tbody>
          </table>
        </div>
                    
      </c:forEach>  
                </div>
                <div class="pagination-table" id="page-table">
                  <!--$!{counter}-->
                  <ul class="pagination">
                      <c:forEach  begin="1" end="${Math.ceil(counter/6)}" var="i">

                      <li class="page-item"><a class="page-link" href="<c:url value="/home_schedule"/>?page=${i}">${i}</a></li>

                      </c:forEach>

                    </ul>
                                          
                </div>
            </div>
            
            

</div>
</div>
  </body>
</html>