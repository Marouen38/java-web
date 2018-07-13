/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package atos.shop.dao;

import atos.shop.entity.Categorie;
import atos.shop.entity.Categorie_;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.Persistence;
import javax.persistence.Query;

/**
 *
 * @author Administrateur
 */
public class CategorieDAO {
    public void ajouter(Categorie c){
    EntityManager em =Persistence.createEntityManagerFactory("PU").createEntityManager();
    em.getTransaction().begin();
    em.persist(c);
    em.getTransaction().commit();
    }

    public List<Categorie> lister() {
        EntityManager em =Persistence.createEntityManagerFactory("PU").createEntityManager();
        Query query = em.createQuery("SELECT c FROM Categorie c ORDER BY c.nom");
        return query.getResultList();
    }

    public void supprimer(Long id) {
        EntityManager em = Persistence.createEntityManagerFactory("PU").createEntityManager();
        Query query = em.createQuery("delete  FROM Categorie c where c.id=:id");
        query.setParameter("id", id);

        em.getTransaction().begin();
        //em.remove(em.find(Catégorie.class, id) );
        query.executeUpdate();
        em.getTransaction().commit();

    }
}

