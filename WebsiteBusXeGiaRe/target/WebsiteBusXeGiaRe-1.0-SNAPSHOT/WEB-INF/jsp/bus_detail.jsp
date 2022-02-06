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
                <img class="active" src="https://source.unsplash.com/W1yjvf5idqA">
              </div>

            </div>
          </div>
            
          <div class="column-xs-12 column-md-5">
<!--            <h1>$!{bus.busName} - $!{bus.numberPlate}</h1>-->
<!--            <h2>$!{bus.categoryBus.name}</h2>-->
            <div class="description">
              <p>The purposes of bonsai are primarily contemplation for the viewer, and the pleasant exercise of effort and ingenuity for the grower.</p>
              <p>By contrast with other plant cultivation practices, bonsai is not intended for production of food or for medicine. Instead, bonsai practice focuses on long-term cultivation and shaping of one or more small trees growing in a container.</p>
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
                <textarea
                          class="input"
                          ng-model="cmntCtrl.comment.text"
                          placeholder="Thêm bình luận..."
                          required></textarea>
              </div>

              

              

              <div class="form-row">
                <input type="submit" value="Bình luận">
              </div>
            </form>
          </div>

          <!-- Comments List -->
          <div class="comments">
            
            <!-- Comment - Dummy -->
            <div class="comment">
              <!-- Comment Avatar -->
              <div class="comment-avatar">
                <img src="http://gravatar.com/avatar/412c0b0ec99008245d902e6ed0b264ee?s=80">
              </div>

              <!-- Comment Box -->
              <div class="comment-box">
                <div class="comment-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto temporibus iste nostrum dolorem natus recusandae incidunt voluptatum.</div>
                <div class="comment-footer">
                  <div class="comment-info">
                    <span class="comment-author">
                      <a href="mailto:sexar@pagelab.io">Sexar</a>
                    </span>
                    <span class="comment-date">Feb 2, 2013 11:32:04 PM</span>
                  </div>

                  <div class="comment-actions">
                    <a href="#">Reply</a>
                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>

    </div>
  </body>
</html>  
