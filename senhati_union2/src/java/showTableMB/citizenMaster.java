/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package showTableMB;

import entity.CitizenMaster;
import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import util.HibernateUtil;

/**
 *
 * @author zakir
 */
@ManagedBean
@SessionScoped
public class citizenMaster {

    private HibernateUtil hu;
    private Session ses;
    private List<CitizenMaster> list;

    public citizenMaster() {
    }

    public List<CitizenMaster> citizenmaster() {
        list = new ArrayList<>();
        ses = hu.getSessionFactory().openSession();
        ses.beginTransaction();
        Query query = ses.createQuery("from CitizenMaster");
        list = query.list();
        ses.getTransaction().commit();
        ses.close();
        return list;
    }
}
