<%-- 
    Document   : ajouter-client
    Created on : 10 juil. 2018, 09:56:27
    Author     : Administrateur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <link style="styleclient.css">
        <link rel="stylesheet" href="css/styleclient.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Creer votre compte</h1>
        <form method="POST">
            <div class="form-row">
                <div class="form-group">
                    <label for="inputAddress">Nom</label>
                    <input type="text" name="nom" class="form-control" id="inputAddress" placeholder="entrer votre nom">
                </div>
                <div class="form-group">
                    <label for="inputAddress">Prenom</label>
                    <input type="text" name="prenom" class="form-control" id="inputAddress" placeholder="entez votre prenom">
                </div>
                <div class="form-group">
                    <label for="inputAddress">Login</label>
                    <input type="email" name="login" class="form-control" id="inputAddress" placeholder="login">
                </div>
                 <div class="form-group">
                    <label for="inputAddress">mot de passe</label>
                    <input type="password" name="mdp" class="form-control" id="inputAddress" placeholder="mot de passe">
                </div>
                <div>
                <input type="submit"/>
                </div>
            </div>
        </form>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
    </body>
</html>
