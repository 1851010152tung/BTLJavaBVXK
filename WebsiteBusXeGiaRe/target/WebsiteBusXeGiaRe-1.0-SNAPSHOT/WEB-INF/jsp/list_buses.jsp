<%-- 
    Document   : listEmployers
    Created on : Oct 6, 2021, 11:03:31 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="property" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>

<html lang="es" dir="ltr">
  <head>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0">
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="<c:url value = "/css/list_buses.css" />"/>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700;800&display=swap" rel="stylesheet"/>
  </head>
 
  <body>


<!-- ======= JOBS Section ======= -->
<section id="bus" class="bus">
    <!-- SEARCH SECTION -->
    <div class="container">
        <form class="search-bus" action="">
            <div class="search input-group mb-3">
                <input type="text" name="kw" class="form-control" placeholder="Tìm kiếm chuyến xe">
                <div class="input-group-append">
                    <button class="btn-search" type="submit">
                        <i class="fa fa-search" aria-hidden="true"></i>
                    </button>
                </div>
            </div>
        </form>
    </div>
    <c:if test="${counter > 0}">
        <div class="box-container">
            <!-- JOB SECTION -->
    <div class="box-container">
        <c:forEach var="b" items="${buses}">
                <div class="box">
                    <c:if test="${b[8] != null && b[8].startsWith('https') == true}">
                        <img class="img-fluid" src="${b[8]}" alt="${b[1]}"/>
                    </c:if>
                    <div class="content-text-booking">
                        <a href="<c:url value="/bus_detail/${b[0]}"/>"><h3>${b[1]}</h3></a>
                        <p>Thương hiệu: ${b[3]}</p>
                        <p>Biển số xe: ${b[2]}</p>

                        <div class="label" data-v-7026b95e="">
                            ${b[4]} <span class="dot" data-v-7026b95e=""></span>
                            <span data-v-7026b95e="">${b[5]} chỗ</span> 
                        </div>
                    </div>
                </div>
        </c:forEach>
    </div>
            <!-- CLASSIFY THE PAGINATION BY THE CONDITIONS -->
            <nav class="pagi">
                <ul class="pagination pagination-lg justify-content-center">
                    <c:forEach begin="1" end="${Math.ceil(counter/4)}" step="1" var="i">
                        <li class="page-item">
                            <a class="page-link" href="<c:url value="/list_buses"/>?page=${i}">${i}</a>
                        </li>
                    </c:forEach>
                </ul>
            </nav>
        </div>
    </c:if>
    <c:if test="${counter == 0}">
        <div class="container">
            <div class="empty-result">
                <i class="fa fa-times fa-5x pt-3" aria-hidden="true"></i>
                <p>
                    Không tìm thấy thông tin
                </p>
            </div>
        </div>
    </c:if>
</section><!-- End Our Services Section -->

<a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>

  </body>
</html>