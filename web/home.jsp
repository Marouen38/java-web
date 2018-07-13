<%-- 
    Document   : _TEMPLATE
    Created on : 10 juil. 2018, 16:42:53
    Author     : Administrateur
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <c:import url="_STEELSHEETS.jsp"/>
        <meta http-equiv="Cache-Control" content="no-cache"/>
    </head>
    <body class="pagination-centered">
        <div id="container">
            <c:import url="_TITRE.jsp"/>
            <c:import url="_MENU.jsp"/>
            <div id="contenu">${clientConnecte.login}</div>
            <c:import url="_PIEDS.jsp"/>
            <c:import url="_JS.jsp"/>
            <c:import url="connection"/>
        </div>
    </body>
</html>
