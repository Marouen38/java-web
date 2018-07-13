<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav aria-label="breadcrumb">
    Menu:
    <c:choose>
        <c:when test="{clientConnecte eq null}">
            
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#">CLIENT</a></li>
        <li class="breadcrumb-item"><a href="#">PRODUITS</a></li>
        <li class="breadcrumb-item"><a href="#">CATHEGORIE</a></li>
        </c:when>
        <li class="breadcrumb-item"><a href="#">MON COMPTE</a></li>
        <li class="breadcrumb-item"><a href="<c:url value="/connection"/>">LOGIN</a></li>
        <li class="breadcrumb-item"><a href="<c:url value="/deconnection"/>">LOGOUT</a></li>
        <li class="breadcrumb-item"><a href="<c:url value="/ajouter-client"/>">Inscription</a></li>
        <li class="breadcrumb-item active" aria-current="page">Data</li>
    </c:choose>
        Changer de style:
        <li class="breadcrumb-item"> <a href="changerStyle?style=jamaique"><img src="css/jam.png" alt=""/></a></li>
        
        <li class="breadcrumb-item"><a href="changerStyle?style=cuba"><img src="css/cuba.png" alt=""/></a></li>
        
    </ol>
</nav>
