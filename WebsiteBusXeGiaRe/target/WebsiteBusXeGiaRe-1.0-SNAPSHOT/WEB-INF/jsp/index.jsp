<%-- 
    Document   : index.jsp
    Created on : Aug 4, 2021, 3:03:31 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>



<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0">
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="<c:url value = "/css/homebase.css" />"/>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700;800&display=swap" rel="stylesheet"/>
  </head>
 
  <body>
        
        
       <!--BANNER BACKGROUND ĐẶT VÉ TRỰC TUYẾN-->

       <div class="banner-container">
        <section class="banner"  id="home"  >
            <div class="background">
                <img class="background-img" src="<c:url value="/img/banner_bg2.png"/>" alt="logo">
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <ul class="social-icons-banner">
                    <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                    <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                    <li><a class="instagram" href="#"><i class="fa fa-instagram"></i></a></li>
                    <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>   
                    </ul>
                </div>
                
                
          
                
                
            </div>
                
        </section>
       </div>
        
       
                    <!--FORM TÌM CHUYẾN XE col-md-5 col-md-offset-1-->

        <div class="contain-form">
            <div class="">
                <section id="first-tab-group" class="tabgroup">
                    <div id="tab1">
                        <div class="submit-form">

                            <div class="row">

                                <h4>Tìm chuyến trực tuyến:</h4>
                               
                            </div>


                            <form:form id="form-submit" action="" method="get">

                                <div class="row">
                                    <!--ĐIỂM ĐẾN/ĐIỂM ĐI-->
                                    <div class="place-from-to">
                                        <div class="col-md-6">
                                            <fieldset class="fieldset-location">
                                                <label for="from">Điểm đi</label>
                                                <select required name='from' onchange='this.form'>
                                                    <option value="">Chọn địa điểm...</option>
                                                    <option value="Cambodia">Cambodia</option>
                                                    <option value="Hong Kong">Hong Kong</option>
                                                    <option value="India">India</option>
                                                    <option value="Japan">Japan</option>
                                                    <option value="Korea">Korea</option>
                                                    <option value="Laos">Laos</option>
                                                    <option value="Myanmar">Myanmar</option>
                                                    <option value="Singapore">Singapore</option>
                                                    <option value="Thailand">Thailand</option>
                                                    <option value="Vietnam">Vietnam</option>
                                                </select>
                                            </fieldset>
                                        </div>
                                        <div class="col-md-6">
                                            <fieldset class="fieldset-location">
                                                <label for="to">Điểm đến</label>
                                                <select required name='to' onchange='this.form'>
                                                    <option value="">Chọn địa điểm...</option>
                                                    <option value="Cambodia">Cambodia</option>
                                                    <option value="Hong Kong">Hong Kong</option>
                                                    <option value="India">India</option>
                                                    <option value="Japan">Japan</option>
                                                    <option value="Korea">Korea</option>
                                                    <option value="Laos">Laos</option>
                                                    <option value="Myanmar">Myanmar</option>
                                                    <option value="Singapore">Singapore</option>
                                                    <option value="Thailand">Thailand</option>
                                                    <option value="Vietnam">Vietnam</option>
                                                </select>
                                            </fieldset>
                                        </div>
                                    </div>

                                    <!--NGÀY ĐẾN/NGÀY VỀ-->
                                    <div class="datetime">

                                        <div class="col-md-6" id="datetime">

                                            <fieldset class="fieldset-date">
                                                <label for="departure">Ngày đi</label>
                                                <input name="deparure" type="text" class="form-control date" id="deparure" placeholder="Chọn ngày..." required="" onchange='this.form'>
                                            </fieldset>
                                        </div>
                                        <div class="col-md-6" id="datetime">
                                            <fieldset class="fielset-date">
                                                <label for="return">Ngày về</label>
                                                <input name="return" type="text" class="form-control date" id="return" placeholder="Chọn ngày..." required="" onchange='this.form.'>
                                            </fieldset>
                                        </div>

                                    </div>

                                    <!--BUTTON TÌM CHUYẾN XE-->

                                    <div class="submit-btn">

                                        <div class="col-md-6">
                                            <fieldset>
                                                <button type="submit" id="form-submit" class="btn">TÌM CHUYẾN</button>
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

       <!--BANNER BACKGROUND TOP ĐIỂM ĐẾN-->

       <div class="banner-container">
        <section class=""  id="home"  >
            <div class="background-city">
                
                <div class="title-text">
                   <p class="title-text-h1">ĐIỂM ĐẾN PHỔ BIẾN</p> 
                   <p class="small-title">Gợi ý những điểm du lịch được ưa thích trong năm</p> 
                </div>
                
                            
       <main class="page-content">
        <div class="card">
          <div class="content">
            <h2 class="title">Hội An</h2>
<!--            <p class="copy">Check out all of these gorgeous mountain trips with beautiful views of, you guessed it, the mountains</p>-->
            <button class="btn">Xem chuyến</button>
          </div>
        </div>
        <div class="card">
          <div class="content">
            <h2 class="title">Ninh Bình</h2>
<!--            <p class="copy">Plan your next beach trip with these fabulous destinations</p>-->
            <button class="btn">Xem chuyến</button>
          </div>
        </div>
        <div class="card">
          <div class="content">
            <h2 class="title">Đà Nẵng</h2>
<!--            <p class="copy">It's the desert you've always dreamed of</p>-->
            <button class="btn">Xem chuyến</button>
          </div>
        </div>
        <div class="card">
          <div class="content">
            <h2 class="title">TP.HCM</h2>
<!--            <p class="copy">Seriously, straight up, just blast off into outer space today</p>-->
            <button class="btn">Xem chuyến</button>
          </div>
        </div>
      </main>
 
          

                <img class="background-img" src="<c:url value="/img/backgroundcity.png"/>" >
                
                
   
                
                
            </div>
                
        </section>
       </div>        
        
       
        <!--DỊCH VỤ XE KHÁCH-->         
                
      <section class="services" id="services">

    <h1 class="heading">
        <span>D</span>
        <span>Ị</span>
        <span>C</span>
        <span>H</span>
        
        <span>V</span>
        <span>Ụ</span>
     
    </h1>

    <div class="box-container">

        <div class="box">
            <i class="fa fa-medkit"></i>
            <h3>An toàn hàng đầu</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Inventore commodi earum, quis voluptate exercitationem ut minima itaque iusto ipsum corrupti!</p>
        </div>
        <div class="box">
            <i class="fa fa-coffee"></i>
            <h3>Nước uống miễn phí</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Inventore commodi earum, quis voluptate exercitationem ut minima itaque iusto ipsum corrupti!</p>
        </div>
        <div class="box">
            <i class="fa fa-bullhorn"></i>
            <h3>Nhiều ưu đãi</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Inventore commodi earum, quis voluptate exercitationem ut minima itaque iusto ipsum corrupti!</p>
        </div>
        <div class="box">
            <i class="fa fa-ticket"></i>
            <h3>Đặt vé dễ dàng</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Inventore commodi earum, quis voluptate exercitationem ut minima itaque iusto ipsum corrupti!</p>
        </div>
        <div class="box">
            <i class="fa fa-bus"></i>
            <h3>Nhà xe chất lượng cao</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Inventore commodi earum, quis voluptate exercitationem ut minima itaque iusto ipsum corrupti!</p>
        </div>
        <div class="box">
            <i class="fa fa-star"></i>
            <h3>Đánh giá chuyến đi</h3>
            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Inventore commodi earum, quis voluptate exercitationem ut minima itaque iusto ipsum corrupti!</p>
        </div>

    </div>

</section> 
                
      
        
<!-- packages section starts  -->

<section class="packages" id="packages">

    <h1 class="heading">
        <span>Đ</span>
        <span>Ặ</span>
        <span>T</span>
        <span>V</span>
        <span>É</span>

    </h1>

    <div class="box-container">

        <c:forEach var="s" items="${schedules}">
        <div class="box">
            <c:if test="${s.bus.image != null && s.bus.image.startsWith('https') == true}">
                <img class="img-fluid" src="${s.bus.image}" alt="${s.bus.busName}"/>
            </c:if>
            <div class="content-text-booking">
                <h3>${s.route.departure} <img class="fromto" alt="fromto" width="28" height="7" src="<c:url value="/img/fromto.png"/>" data-v-7026b95e="">  ${s.route.destination}</h3>
                <p>Nhà xe: ${s.bus.busName}</p>
                
                <div class="label" data-v-7026b95e="">
                    ${s.bus.categoryBus.name} <span class="dot" data-v-7026b95e=""></span>
                    <span data-v-7026b95e="">${s.bus.seatNumber} chỗ</span> 
                </div>
                <p>${s.route.distance} km</p>
                <div class="price">${s.route.ticketPrice} VNĐ</div>
                <a href="<c:url value="/home_routine"/>" class="btn-book">Tìm hiểu</a>
            </div>
        </div>
        </c:forEach>
    </div>
    
    
</section>

<section class="hot-routes" id="hot-routes">
          
      <h1 class="heading-route">
        <span>T</span>
        <span>U</span>
        <span>Y</span>
        <span>Ế</span>
        <span>N</span>
        <span>X</span>
        <span>E</span>

    </h1>
    
    <div class="main-routes">
  <ul class="cards">
    <c:forEach var="h" items="${hotRoutes}">
        <li class="cards_item">
          <div class="card-route">
              <div class="card_image">
                <c:if test="${h[4] != null && h[4].startsWith('https') == true}">
                    <img class="img-fluid" id="img-hot-routes" src="${h[4]}" alt="${h[2]}"/>
                </c:if>              
              </div>
            <div class="card_content">
              <h2 class="card_title">${h[1]} <img class="fromtowhite" alt="fromto" width="28" height="7" src="<c:url value="/img/fromtowhite.png"/>" data-v-7026b95e=""> ${h[2]}</h2>
              <div class="card_text">
                  <div class="details-container" data-v-8fbac40c="">
                      
                      
                      <div class="distance-journeyTime">
                              <div class="details" style="justify-content: center" data-v-8fbac40c="">
                                  <em class="fa fa-clock-o icon" data-v-8fbac40c=""></em> 
                                  <span>${h[7]}</span>
                              </div>
                              <div class="details" data-v-8fbac40c="">
                                  <em class="fa fa-map-marker icon" data-v-8fbac40c=""></em>
                                  <span>${h[8]} km</span>
                              </div>
                    </div>
                      <div class="details" data-v-8fbac40c="">
                          <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" viewBox="0 0 38 39" fill="white" fill-rule="evenodd" class="icon" data-v-8fbac40c="">
                          <path fill-rule="nonzero" d="M23.833 11.25v-4.5c0-1.249-.975-2.25-2.166-2.25H4.333c-1.191 0-2.155 1.001-2.155 2.25v4.5c1.191 0 2.155 1.012 2.155 2.25s-.964 2.25-2.166 2.25v4.5c0 1.238.975 2.25 2.166 2.25h17.334c1.191 0 2.166-1.012 2.166-2.25v-4.5c-1.191 0-2.166-1.012-2.166-2.25s.975-2.25 2.166-2.25zm-9.75 8.438h-2.166v-2.25h2.166v2.25zm0-5.063h-2.166v-2.25h2.166v2.25zm0-5.063h-2.166v-2.25h2.166v2.25z" transform="rotate(-45 23.243 9.257)">
                              
                          </path>
                          </svg> 
                          <span class="item-price" data-v-8fbac40c="">${h[6]} VNĐ</span>
                      </div> 
                  </div>
              </div>
            </div>
          </div>
        </li>
    </c:forEach>
    
  </ul>
</div>

    
</section>




    </body>
</html>


