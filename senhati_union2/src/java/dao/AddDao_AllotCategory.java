/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.CitizenMaster;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import util.HibernateUtil;

/**
 *
 * @author zakir
 */
public class AddDao_AllotCategory {

    public boolean addCitizenMaster(CitizenMaster citizen) {
        try {
            SessionFactory factiory = HibernateUtil.getSessionFactory();
            Session session = factiory.openSession();
            session.beginTransaction();
            session.save(citizen);
            session.getTransaction().commit();
            session.close();
            return true;
        } catch (Exception e) {

            return false;
        }
    }

}
