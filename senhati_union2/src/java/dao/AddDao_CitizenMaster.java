/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.AllotCategory;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import util.HibernateUtil;

/**
 *
 * @author zakir
 */
public class AddDao_CitizenMaster {

    public boolean addAllotCategory(AllotCategory allot) {
        try {
            SessionFactory factiory = HibernateUtil.getSessionFactory();
            Session session = factiory.openSession();
            session.beginTransaction();
            session.save(allot);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (HibernateException e) {

            return false;
        }
    }
       
    
}
