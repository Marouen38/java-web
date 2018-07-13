/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package atos.shop.servlet;

import atos.shop.entity.Client;
import atos.shop.servive.ClientService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrateur
 */
@WebServlet(name = "AjouterClient", urlPatterns = {"/ajouter-client"})
public class AjouterClientServlet extends HttpServlet {

    private ClientService client = new ClientService();
    private ClientService service = new ClientService();
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("ajouter-client.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       ;
        
         String nom = request.getParameter("nom");
         String prenom = request.getParameter("prenom");
         String pseudo = request.getParameter("login");
         String mdp = request.getParameter("mdp");
        
        Client c = new Client();
        c.setLogin(pseudo);
        c.setMdp(mdp);
        c.setPrenom(prenom);
        c.setNom(nom);

        service.ajouter(c);
        
        
        //demandfer au navigateur de faire une requette HTTP GET bers la route de listeClient
        response.sendRedirect("home-page");

    }

}
