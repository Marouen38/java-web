<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<link href="css/style.css" rel="stylesheet" type="text/css"/>
<link href="css/template.css" rel="stylesheet" type="text/css"/>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${cookie.theme ne null}">
    <link href="css/${cookie.theme.value}.css"rel="stylesheet" type="text/css"/>
    
</c:if>
      
