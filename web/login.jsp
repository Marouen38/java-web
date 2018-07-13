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
            <div id="contenu">

                <h1></h1>
                <form method="post">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <input name="login" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <input name="mdp" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                    </div>
                    <div class="form-check">
                        <input type="checkbox" class="form-check-input" id="exampleCheck1">
                        <label class="form-check-label" for="exampleCheck1">Check me out</label>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>

            </div>
            <c:import url="_PIEDS.jsp"/>
            <c:import url="_JS.jsp"/>
        </div>
    </body>
</html>