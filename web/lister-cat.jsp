<%-- 
    Document   : lister-cat
    Created on : 9 juil. 2018, 16:34:50
    Author     : Administrateur
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Liste de categories</h1>
        <c:forEach items="${listeCat}" var="ActCat">
            <a href="<c:url value="/supprimer-cat"/>?idCat=${ActCat.id}">supprimer</a>
            ${ActCat.nom}<br>
            
        </c:forEach>
    </body>
</html>
