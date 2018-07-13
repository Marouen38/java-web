<%-- 
    Document   : ajouter-cat
    Created on : 9 juil. 2018, 16:27:23
    Author     : Administrateur
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nouvelle Catégorie</title>
        <link rel="stylesheet" href="css/ajouter-cat.css">

    </head>
    <body>

        <h1>Nouvelle Catégorie</h1>
        <form id="formStyle" method="post" >
 
             <label class="item">Nom</label>
             <input class="item" type="text" name="nom" />
 
             <input class="item" type="submit" value="Ajouter" />
 
         </form>
       
      <!--  <form>
            <div class="form-group">
                <label for="nomCat">Email address</label>
                <input type="email" class="form-control" id="nomCat"  placeholder="Enter Nom">

            </div>


            <button type="submit" class="btn btn-primary">Ajouter</button>
        </form>
        -->
    </body>
</html>
