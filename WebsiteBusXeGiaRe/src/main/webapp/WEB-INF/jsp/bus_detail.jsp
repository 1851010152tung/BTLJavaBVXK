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
      <div class="container" id="contain-bus-description">
        <div class="grid second-nav">
          <div class="column-xs-12">
            <nav>
              <ol class="breadcrumb-list">
                <li class="breadcrumb-item"><a href="#">Lịch trình</a></li>
                <li class="breadcrumb-item"><a href="#">Tuyến xe</a></li>
                <li class="breadcrumb-item active">Chi tiết nhà xe</li>
              </ol>
            </nav>
          </div>
        </div>
        <div class="grid product">
          <div class="column-xs-12 column-md-7">
            <div class="product-gallery">
              <div class="product-image">
                    <c:if test="${bus.image != null && bus.image.startsWith('https') == true}">
                        <img class="active" src="${bus.image}" alt="${bus.busName}" style="width: 710px; object-fit: cover"/>
                    </c:if>
                    <c:if test="${bus.image == null || bus.image.startsWith('https') == false}">
                        <img class="img-fluid " src="<c:url value="/images/default.jpg"/>" alt="${bus.busName}"/>
                    </c:if>              </div>

            </div>
          </div>
            
          <div class="column-xs-12 column-md-5">
            <h1>${bus.busName} - ${bus.numberPlate}</h1>
            <h2>${bus.categoryBus.name}</h2>
            <div class="description">
              <p>${bus.description}</p>
            </div>
          </div>
        </div>
          

       <div class="comments-app" ng-app="commentsApp" ng-controller="CommentsController as cmntCtrl">
          <!-- From -->
          <div class="comment-form">
            <!-- Comment Avatar -->
            <div class="comment-avatar">
              <img src="http://lorempixel.com/200/200/people">
            </div>

            <form class="form" name="form" ng-submit="form.$valid && cmntCtrl.addComment()" novalidate>
              <div class="form-row">
                  <textarea id="commentId"
                          class="input"
                          ng-model="cmntCtrl.comment.text"
                          placeholder="Thêm bình luận..."
                          required></textarea>
              </div>

              

              <div class="form-row">
                  <input type="submit" onclick="addComment(${bus.idBus})" value="Bình luận">
              </div>
            </form>
          </div>

          <!-- Comments List -->
          <div class="comments" id="commentArea">
            
              <c:forEach var="c" items="${comments}" > 
            <!-- Comment - Dummy -->
                  <div class="comment">
              <!-- Comment Avatar -->
              <div class="comment-avatar">
                  <c:if test="${c[3] != null && c[3].startsWith('https') == true}">
                      <img src="${c[3]}">
                  </c:if>
                  <c:if test="${c[3] == null || c[3].startsWith('https') == false}">
                    <div class="img-fluid rounded-circle d-flex flex-column text-center">
                        <i class="fas fa-user-secret"></i>
                        <span class="an-danh">Ẩn danh</span>
                    </div>
                  </c:if>    
              </div>

              <!-- Comment Box -->
              <div class="comment-box">
                <div class="comment-text">${c[1]}</div>
                <div class="comment-footer">
                  <div class="comment-info">
                    <span class="comment-author">
                      <a>${c[4]}</a>
                    </span>
                    <span class="comment-date">${c[2]}</span>
                  </div>

                  
                </div>
              </div>
            </div>
              </c:forEach>
            
            
            <div class="d-flex justify-content-between page mr-sm-5 ml-sm-5">
                <ul class="pagination">
                    <c:forEach begin="1" end="${Math.ceil(slBinhLuan/5)}" var="i">  
                        <li class="page-item">
                            <a class="page-link" 
                               href="<c:url value="/bus_detail/${bus.idBus}" />?page=${i}">${i}
                            </a>
                        </li>
                    </c:forEach>
                </ul>
                <div> Tổng số bình luận: ${countComment}</div> 
            </div>
            
          </div>
        </div>

    </div>
  </body>
</html>  
