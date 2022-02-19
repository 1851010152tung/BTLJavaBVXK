<%-- 
    Document   : list_schedule
    Created on : Dec 28, 2021, 9:06:51 PM
    Author     : Truc Lam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


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
               <c:if test="${s.bus.image != null && s.bus.image.startsWith('https') == true}">
                <img class="img-fluid" src="${s.bus.image}" alt="${s.bus.busName}"/>
            </c:if>
           </div>
           <div class="ticket-item-info">
               <div class="ticket-header">
                   <a href="<c:url value="/bus/bus_detail?id=${s.bus.idBus}"/>">
                       <h2>${s.bus.busName}</h2>
                   </a>
                   <div class="ticket-header-seat">
                       <p>${s.bus.categoryBus.name}</p>
                       <c:if test="${s.bus.seatNumber > 0}">
                       <p class="seat-pos"> Còn
                           <span>${s.bus.seatNumber}</span> 
                           ghế trống
                       </p>
                       </c:if>
                       <c:if test="${s.bus.seatNumber <= 0}">
                       <p class="seat-pos">
                           <span>Hết chỗ</span> 
                           
                       </p>
                       </c:if>
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
                               <p class="ticket-content-title">Ngày khởi hành</p>
                               <p class="ticket-content-info pickup-time">${s.departureDate}</p>
                           </div>
                       </div>
                       <div class="ticket-content-to">
                           <div>
                               <p class="ticket-content-title">Nơi trả</p>
                               <p class="ticket-content-info dropoff" >${s.route.dropOffPoint}</p>
                           </div>
                           <div><p class="ticket-content-title">Thời gian đi</p>
                               <div>   
                                <p class="ticket-content-info pickup-time">${s.departureTime}</p> 
<!--                               <p class="ticket-content-info dropoff-time"></p>-->
                               </div>
                           </div>
                       </div>
                   </div>
                   <div class="ticket-content-suggest">
                       <div class="ticket-content-way">
                           <div>
                               <p class="ticket-content-title">Khoảng cách</p>
                               <p class="ticket-content-info">${s.route.distance} km</p>
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
                   <p><span>Xem chi tiết</span></p></div><!---->
                   <a href="javascript:;" onclick="addToCart(${s.id}, '${s.route.departure}','${s.route.destination}','${s.bus.busName}','${s.bus.categoryBus.name}' 
                       ,${s.route.ticketPrice}, ${s.bus.seatNumber}, ${s.departureDate}, '${s.departureTime}')">
                     <button type="button" class="btn-book">Đặt vé</button>  
                   </a>
                   
                   
                 
           </div>
       </div>
        </c:forEach>
</div>
  </body>
</html>
