/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package atos.shop.servive;

import atos.shop.dao.ClientDAO;
import atos.shop.entity.Client;
import java.util.List;

/**
 *
 * @author Administrateur
 */
public class ClientService {
    private ClientDAO dao = new ClientDAO();
    public void ajouter(Client cl) {
        dao.ajouter(cl);
    }
    public List<Client> lister() {
       return dao.lister(); 
    }
    
    public Client connection(String pseudo, String mdp){
         Client cli=dao.findByLoginAndMdp(pseudo, mdp);
         
         return cli;
    }
        
}
