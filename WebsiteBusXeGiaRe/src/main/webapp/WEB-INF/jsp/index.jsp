<%-- 
    Document   : index.jsp
    Created on : Aug 4, 2021, 3:03:31 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link href="<c:url value="/css/style.css" />" rel="stylesheet" />
    </head>

     <%-- Demo Hibernate x Spring MVC --%>
    <body>
        <ul>
            <c:forEach var="cat" items="${categories}">
                <li>${cat.id} - ${cat.name}</li>
            </c:forEach>
        </ul>
    </body>

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


   
    
</html>
