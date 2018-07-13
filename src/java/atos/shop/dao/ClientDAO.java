/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package atos.shop.dao;

import atos.shop.entity.Categorie;
import atos.shop.entity.Client;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author Administrateur
 */
public class ClientDAO {
    public void ajouter(Client c) {
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        em.getTransaction().begin();
        em.persist(c);
        em.getTransaction().commit();
    }

    public List<Client> lister() {
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        Query query = em.createQuery("SELECT cl FROM Client cl ORDER BY cl.nom");
        return query.getResultList();
    }
    public Client findByLoginAndMdp (String login,String mdp){
        try
        {
            EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
             return (Client) em.createQuery("SELECT c FROM Client c WHERE c.login=:log AND c.Mdp=:pwd")
                     .setParameter("pwd", mdp)
                     .setParameter("log", login)
                     .getSingleResult();
        }
        catch(Exception ex)
        {
            return null;
         
        }
            
            
       
    }
}
