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
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700;800&display=swap" rel="stylesheet"/>
  </head>
 
  <body>
        

<div>
    
        <div class="table-responsive" >
           
            <div class="flex-center">
                 <div class="title_right">
                                <form action="">
                                
                                <div class="col-md-5 col-sm-5  form-group pull-right top_search">
                                        <div class="input-group">
                                                <input type="text" class="form-control" name="kw" placeholder="Tìm kiếm tuyến xe...">
                                                <span class="input-group-btn">
                                                    <button class="btn btn-default" value="Search" type="submit">Tìm!</button>
                                                </span>
                                        </div>
                                </div>
                                
                            </form>
                        </div>
                <div class="table-routine">
                    
                    <table class="table table-striped jambo_table bulk_action">
                        <thead id="header-table">
                        <tr class="headings">
                          <th class="column-title">Tuyến xe</th>
          <!--                <th class="column-title">Loại xe</th>-->
                          <th class="column-title">Quãng đường</th>
                          <th class="column-title">Thời gian hành trình</th>
                          <th class="column-title">Giá vé</th>                                        
                          <th class="column-title">Giờ chạy</th>                                       
                          <th class="end"></th>                                      


                        </tr>
                      </thead>
                    </table>

           
                
                 <c:forEach var="r" items="${routes}" >                     
            <div class="groups">
                <table class="table table-striped jambo_table bulk_action">
                    <thead>
                        <tr class="title-departure">
                            <th colspan="10" class="text">${r.departure} =>
                            </th>
                        </tr>
                    </thead>   
                
                
            <tbody>
              <tr class="headings">

                <td class="column-title ">${r.destination}</td>
<!--                <td class="column-title ">$!{r.bus.categoryBus.name}</td>-->
                <td class="column-title ">${r.distance} km</td>
                <td class="column-title ">${r.journeyTime}</td>
                <td class="column-title ">${r.ticketPrice}</td>                                        
                <td class="column-title ">
                    <a class="user-name-sign-in" href="<c:url value="/home_routine/list_schedule?id=${r.id}"/>">
                    <button data-v-62c8fe4c="" class="time-detail" > Chi tiết
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

                      <li class="page-item"><a class="page-link" href="<c:url value="/home_routine"/>?page=${i}">${i}</a></li>

                      </c:forEach>

                    </ul>
                                          
                </div>
            </div>
            
            

</div>
</div>
  </body>
</html>