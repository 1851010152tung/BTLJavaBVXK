<%-- 
    Document   : index.jsp
    Created on : Aug 4, 2021, 3:03:31 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

                                <h4>Check availability for <em>direction</em>:</h4>
                                <!--RADIO BUTTON: CHỌN MỘT CHIỀU HOẶC KHỨ HỒI-->
                                <div class="col-md-6">
                                    <div class="radio-select">
                                        <div class="row">
                                            <div class="col-md-6 col-sm-6 col-xs-6" id="row-radio-btn">
                                                <label for="round">Một chiều</label>
                                                <input type="radio" name="trip" id="round" value="round" required="required"onchange='this.form.()'>
                                            </div>
                                            <div class="col-md-6 col-sm-6 col-xs-6" id="row-radio-btn">
                                                <label for="oneway">Khứ hồi</label>
                                                <input type="radio" name="trip" id="oneway" value="one-way" required="required"onchange='this.form.()'>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <form id="form-submit" action="" method="get">

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
                                                <input name="deparure" type="text" class="form-control date" id="deparure" placeholder="Select date..." required="" onchange='this.form'>
                                            </fieldset>
                                        </div>
                                        <div class="col-md-6" id="datetime">
                                            <fieldset class="fielset-date">
                                                <label for="return">Ngày về</label>
                                                <input name="return" type="text" class="form-control date" id="return" placeholder="Select date..." required="" onchange='this.form.'>
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
                

                <img class="background-img" src="<c:url value="/img/backgroundcity.png"/>" >
                
                
               
       <main class="page-content">
        <div class="card">
          <div class="content">
            <h2 class="title">Mountain View</h2>
            <p class="copy">Check out all of these gorgeous mountain trips with beautiful views of, you guessed it, the mountains</p>
            <button class="btn">View Trips</button>
          </div>
        </div>
        <div class="card">
          <div class="content">
            <h2 class="title">To The Beach</h2>
            <p class="copy">Plan your next beach trip with these fabulous destinations</p>
            <button class="btn">View Trips</button>
          </div>
        </div>
        <div class="card">
          <div class="content">
            <h2 class="title">Desert Destinations</h2>
            <p class="copy">It's the desert you've always dreamed of</p>
            <button class="btn">Book Now</button>
          </div>
        </div>
        <div class="card">
          <div class="content">
            <h2 class="title">Explore The Galaxy</h2>
            <p class="copy">Seriously, straight up, just blast off into outer space today</p>
            <button class="btn">Book Now</button>
          </div>
        </div>
      </main>
 
          
                
                
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

        <c:forEach var="r" items="${routes}">
        <div class="box">
            <c:if test="${r.bus.image != null && r.bus.image.startsWith('https') == true}">
                <img class="img-fluid" src="${r.bus.image}" alt="${r.bus.busName}"/>
            </c:if>
            <div class="content-text-booking">
                <h3>${r.departure} <img class="fromto" alt="fromto" width="28" height="7" src="<c:url value="/img/fromto.png"/>" data-v-7026b95e="">  ${r.destination}</h3>
                <p>Nhà xe: ${r.bus.busName}</p>
                
                <div class="label" data-v-7026b95e="">
                    ${r.bus.categoryBus.name} <span class="dot" data-v-7026b95e=""></span>
                    <span data-v-7026b95e="">Còn ${r.bus.seatNumber} chỗ</span> 
                </div>
                <p>${r.distance} km</p>
                <div class="price">${r.ticketPrice} VNĐ</div>
                <a href="#" class="btn-book">Đặt vé</a>
            </div>
        </div>
        </c:forEach>
    </div>
    
</section>

          
    </body>
</html>


