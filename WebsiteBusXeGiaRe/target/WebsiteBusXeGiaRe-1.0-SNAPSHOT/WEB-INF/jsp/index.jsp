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

        <div class=" test">
            <ul>
                <c:forEach var="bus" items="${buses}">
                <li> ${bus.busName}</li>
                </c:forEach>
            </ul>
        </div>        
        
        <div class=" test">
            <ul>
                <c:forEach var="employee" items="${employees}">
                <li> ${employee.lastName}</li>
                </c:forEach>
            </ul>
        </div>   
          
          
    </body>
</html>



<%--
 <ul>
    <c:forEach var="cat" items="${categories}">
     <li>${cat.id} - ${cat.name}</li>
    </c:forEach>
</ul>
--%>

<%--
    <body>
        <a href="<c:url value="/test" />">Redirect/Forward</a>
        <div>
            <img src="<c:url value="/images/sb1.jpg" />" alt="test" />
        </div>
        <h1>Welcome to my Website! ^^</h1>
        <h1>Hello ${name}</h1>
        
        <%-- Thuong sd khi dang nhap thi hien thi dong co muon dang xuat ko? va nguoc lai --%>
<%--        <c:if test="${ fullName != null}">
             <h1>${fullName}</h1>
        </c:if>
             <ul>
                 <c:forEach var="i" begin="1" end="5">
                     <li>${i}</li>
                 </c:forEach>
             </ul>
             
             <ol>
                 <c:forEach var="u" items="${users}"> 
                     <li>${u.firstName} ${u.lastName}</li>
                 </c:forEach>
             </ol>
             
             <ul>
                 <c:forTokens var="f" delims="," 
                              items="Apple,Lemon,Orange"> <%--Delims dung de ngan cach giua cac items--%>
<%--                    <li>${f}</li>
                 </c:forTokens>
             </ul>
             
             <ul>
                 <c:forEach var="i" begin="1" end="10">
                     <c:choose>
                         <c:when test="${i%2 == 0}">
                             <li style="color: red">${i}</li>
                         </c:when>
                         <c:when test="${i%2 != 0}">
                            <li style="color: blue">${i}</li>
                         </c:when>
                     </c:choose>
                 </c:forEach>
             </ul>
              
        <c:url value="/hello-post" var="link"/>
       
        <form:form method="post" action="${link}" modelAttribute="user"> 
            <spring:message code="label.firstName"/>
            <form:input path="firstName" /> <%-- gia tri cua path phai giong vs ten bien trong class User --%>
<%--            <br>
            <spring:message code="label.lastName"/>
            <form:input path="lastName" />
            <input type="submit" value="Send"/>
        </form:form>
    </body>
--%>
