<%-- 
    Document   : bus_detail
    Created on : Jan 3, 2022, 4:50:11 PM
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
    <link rel="stylesheet" type="text/css" href="<c:url value = "/css/bus_detail.css" />"/>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700;800&display=swap" rel="stylesheet"/>
  </head>
 
  <body>
        <div class="container">
        <div class="grid second-nav">
          <div class="column-xs-12">
            <nav>
              <ol class="breadcrumb-list">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Household Plants</a></li>
                <li class="breadcrumb-item active">Bonsai</li>
              </ol>
            </nav>
          </div>
        </div>
        <div class="grid product">
          <div class="column-xs-12 column-md-7">
            <div class="product-gallery">
              <div class="product-image">
                <img class="active" src="https://source.unsplash.com/W1yjvf5idqA">
              </div>
<!--              <ul class="image-list">
                <li class="image-item"><img src="https://source.unsplash.com/W1yjvf5idqA"></li>
                <li class="image-item"><img src="https://source.unsplash.com/VgbUxvW3gS4"></li>
                <li class="image-item"><img src="https://source.unsplash.com/5WbYFH0kf_8"></li>
              </ul>-->
            </div>
          </div>
          <div class="column-xs-12 column-md-5">
            <h1>Bonsai</h1>
            <h2>$19.99</h2>
            <div class="description">
              <p>The purposes of bonsai are primarily contemplation for the viewer, and the pleasant exercise of effort and ingenuity for the grower.</p>
              <p>By contrast with other plant cultivation practices, bonsai is not intended for production of food or for medicine. Instead, bonsai practice focuses on long-term cultivation and shaping of one or more small trees growing in a container.</p>
            </div>
            <button class="add-to-cart">Add To Cart</button>
          </div>
        </div>
    </div>
  </body>
</html>  
