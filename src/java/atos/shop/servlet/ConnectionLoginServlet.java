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
@WebServlet(name = "ConnectionLoginServlet", urlPatterns = {"/connection"})
public class ConnectionLoginServlet extends HttpServlet {

    private ClientService service = new ClientService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String pseudo = req.getParameter("login");
        String mdp = req.getParameter("mdp");
        Client cli = service.connection(pseudo, mdp);
        if (cli == null) {
        } else {
            //enregitre le client en session
            //setAttribute communique de servmet vers jsp via un mot""
            //et parameter permet de communiquer de la  jdp vers la servlet via un mot

            req.getSession().setAttribute("clientConnecte", cli);
            resp.sendRedirect("home-page");
        }
        //2.redirect

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("login.jsp").forward(req, resp);

    }

}
