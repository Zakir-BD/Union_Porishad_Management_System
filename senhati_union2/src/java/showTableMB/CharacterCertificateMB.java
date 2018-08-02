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
import util.HibernateUtil;

/**
 *
 * @author zakir
 */
@ManagedBean
@SessionScoped
public class CharacterCertificateMB {
    CitizenMaster citizenMaster= new CitizenMaster();
     private List<CitizenMaster> list;
     private HibernateUtil hu;
    private Session ses;

    public CitizenMaster getCitizenMaster() {
        return citizenMaster;
    }

    public void setCitizenMaster(CitizenMaster citizenMaster) {
        this.citizenMaster = citizenMaster;
    }
    
    public List<CitizenMaster> citizenmasterById() {
        list = new ArrayList<>();
        ses = hu.getSessionFactory().openSession();
        ses.beginTransaction();
        Query query = ses.createQuery("from CitizenMaster where citiId=:citiId");
        query.setParameter("citiId", citizenMaster.getCitiId());
        list = query.list();
        citizenMaster = list.get(0);
        ses.getTransaction().commit();;
        ses.close();
        return list;
    }
    public String gotoLink(){
        citizenmasterById();
    return "birthCertificate";
    }

    
    
}
