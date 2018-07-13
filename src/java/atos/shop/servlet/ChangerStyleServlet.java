/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package atos.shop.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(name = "CahnagerSteelPage", urlPatterns = {"/changerStyle"})
public class ChangerStyleServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        
     
     //defini un cookies a partir de son url
        Cookie cookie = new Cookie("theme",req.getParameter("style"));
        cookie.setMaxAge(60*60*30*24);
        resp.addCookie(cookie);
    //redirect pour modifier le barre d'adresse 
    resp.sendRedirect("_TEMPLATE.jsp");
       
    }
}

