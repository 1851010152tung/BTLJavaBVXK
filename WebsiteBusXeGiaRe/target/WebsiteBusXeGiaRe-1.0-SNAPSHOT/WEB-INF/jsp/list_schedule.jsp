<%-- 
    Document   : list_schedule
    Created on : Dec 28, 2021, 9:06:51 PM
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
    <link rel="stylesheet" type="text/css" href="<c:url value = "/css/list_schedule.css" />"/>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700;800&display=swap" rel="stylesheet"/>
  </head>
 
  <body>
        

      <div class="container"id="contain-ticket-item">
    
          <c:forEach begin="0" end="0" var="s" items="${schedules}">  
           <div class="title-route">
                <h2>Tuyến xe từ ${s.route.departure} đi ${s.route.destination}</h2>
            </div>
          </c:forEach>
          
    <c:forEach var="s" items="${schedules}">
       
       
       <div class="row ticket-item">
           <div class="ticket-item-img">
               <c:if test="${s.route.bus.image != null && s.route.bus.image.startsWith('https') == true}">
                <img class="img-fluid" src="${s.route.bus.image}" alt="${s.route.bus.busName}"/>
            </c:if>
           </div>
           <div class="ticket-item-info">
               <div class="ticket-header">
                   <h2>${s.route.bus.busName}</h2>
                   <div class="ticket-header-seat">
                       <p>${s.route.bus.categoryBus.name} ${s.route.bus.seatNumber} chỗ</p>
                       <p class="seat-pos">
                           <span>${s.route.bus.seatNumber}</span> 
                           ghế trống
                       </p>
                   </div>
               </div>
               <div class="ticket-content">
                   <div class="ticket-content-station">
                       <div class="ticket-content-from">
                           <div>
                               <p class="ticket-content-title">Nơi đón</p>
                               <p class="ticket-content-info pickup" ">${s.route.pickUpPoint}</p>
                           </div>
                           <div>
                               <p class="ticket-content-title">Thời gian đi</p>
                               <p class="ticket-content-info pickup-time">${s.departureTime}</p>
                           </div>
                       </div>
                       <div class="ticket-content-to">
                           <div>
                               <p class="ticket-content-title">Nơi trả</p>
                               <p class="ticket-content-info dropoff" >${s.route.dropOffPoint}</p>
                           </div>
                           <div><p class="ticket-content-title">Thời gian đến</p>
                               <p class="ticket-content-info dropoff-time">${s.destinationTime}</p>
                           </div>
                       </div>
                   </div>
                   <div class="ticket-content-suggest">
                       <div class="ticket-content-way">
                           <div>
                               <p class="ticket-content-title">Khoảng cách (km)</p>
                               <p class="ticket-content-info">${s.route.distance}</p>
                           </div>
                           <div>
                               <p class="ticket-content-title">Tổng thời gian</p>
                               <p class="ticket-content-info">${s.route.journeyTime}</p>
                           </div>
                       </div>
                   </div>
               </div>
              
           </div>
           <div class="ticket-item-price">
               <div class="price"><!----><!---->${s.route.ticketPrice} ₫ </div>
               <div class="vote"><i aria-hidden="true" class="fa fa-star active"></i>
                   <i aria-hidden="true" class="fa fa-star active"></i>
                   <i aria-hidden="true" class="fa fa-star active"></i>
                   <i aria-hidden="true" class="fa fa-star active"></i>
                   <i aria-hidden="true" class="fa fa-star active"></i><!----><!---->
                   <p>( <span>4.6</span> )</p></div><!---->
                   <button type="button" class="btn-book">Đặt vé</button>
                   
                 
           </div>
       </div>
        </c:forEach>
</div>
  </body>
</html>
