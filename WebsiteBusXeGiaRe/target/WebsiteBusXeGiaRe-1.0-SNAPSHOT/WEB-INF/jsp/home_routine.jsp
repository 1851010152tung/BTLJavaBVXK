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
          <table class="table table-striped jambo_table bulk_action">
              <thead id="header-table">
              <tr class="headings">
                <th class="column-title">Tuyến xe </th>
                <th class="column-title">Loại xe </th>
                <th class="column-title">Quãng đường (km) </th>
                <th class="column-title">Thời gian hành trình </th>
                <th class="column-title">Giờ chạy </th>                                        
                <th class="column-title">Giá vé </th>                                       
                <th class="end"></th>                                      

              
              </tr>
            </thead>
          </table>

            <div class="groups">
                <table class="table table-striped jambo_table bulk_action">
                    <thead>
                        <tr class="title-departure">
                            <th colspan="10" class="text">Bắc Bình Minh =>
                            </th>
                        </tr>
                    </thead>   
                
                
            <tbody>
              <tr class="headings">

                <td class="column-title ">TP.Hồ Chí Minh</td>
                <td class="column-title ">Giường</td>
                <td class="column-title ">159 km</td>
                <td class="column-title">3 giờ 15 phút</td>
                <td class="column-title ">Giờ chạy</td>                                        
                <td class="column-title ">150000</td>
                <td class="end"></td>

                
              </tr>

            </tbody>
          </table>
        </div>
            </div>

</div>
</div>
  </body>
</html>