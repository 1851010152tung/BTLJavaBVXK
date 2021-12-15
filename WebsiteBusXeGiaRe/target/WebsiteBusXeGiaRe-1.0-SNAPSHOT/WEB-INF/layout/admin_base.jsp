<%-- 
    Document   : admin_base
    Created on : Dec 10, 2021, 2:02:18 AM
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
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700;800&display=swap" rel="stylesheet"/>
        <!-- import CSS -->
        <!--<!-- css sidebar -->
        <link href="<c:url value="/css/admin_sidebar_menu.css"></c:url>" rel="stylesheet">
        <link href="<c:url value="/css/bootstrap/custom.min.css"></c:url>" rel="stylesheet">
        <link href="<c:url value="/css/admin_header.css"></c:url>" rel="stylesheet">


        
        
       
               

        
    </head>
    
    <body>
            
            <!-- HEADER -->
            <tiles:insertAttribute name="admin_header"/>

            <!-- SIDEBAR -->
            <tiles:insertAttribute name="admin_sidebar"/>
            
                    <!-- page content -->
                    
                    
            
            <tiles:insertAttribute name="admin_content"/>
             
            
            
                    <!-- /page content -->
            

            <!-- FOOTER -->
            
           
            
           
        
            
            <!-- script -->
            <script src="<c:url value="http://code.jquery.com/jquery-1.11.3.min.js"></c:url>"></script>
        <script src="https://colorlib.com/polygon/vendors/jquery/dist/jquery.min.js"></script>
        <script src="https://colorlib.com/polygon/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://colorlib.com/polygon/build/js/custom.min.js"></script>

    </body>
</html>
