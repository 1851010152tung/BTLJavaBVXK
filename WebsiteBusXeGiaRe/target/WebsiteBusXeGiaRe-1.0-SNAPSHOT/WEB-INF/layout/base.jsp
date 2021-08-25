<%-- 
    Document   : base
    Created on : Aug 22, 2021, 10:33:53 PM
    Author     : Truc Lam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <tiles:insertAttribute name="title"/>
        </title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
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
