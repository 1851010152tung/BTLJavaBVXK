<%-- 
    Document   : base
    Created on : Aug 22, 2021, 10:33:53 PM
    Author     : Truc Lam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <tiles:insertAttribute name="title"/>
        </title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        
        <!-- font awesome cdn link  -->
<!--        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">-->

        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700;800&display=swap" rel="stylesheet"/>
        <!-- import CSS -->
        <link href="css/header_footer.css" rel="stylesheet">
        <link href="<c:url value="/css/homebase.css"/>" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
    </head>
    
    <body>
        <div>
            <!-- HEADER -->
            <tiles:insertAttribute name="header"/>

            <!-- CONTENT -->
            <tiles:insertAttribute name="content"/>

            
            <!-- FOOTER -->
            
            <tiles:insertAttribute name="footer"/>
            
        </div>
            
    </body>
</html>
