/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package addhandler;

import dao.AddDao_AllotCategory;
import entity.CitizenMaster;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

/**
 *
 * @author zakir
 */
@ManagedBean
@SessionScoped
public class CitizenMasterMB {
    CitizenMaster citizenMaster = new CitizenMaster();

    public CitizenMaster getCitizenMaster() {
        return citizenMaster;
    }

    public void setCitizenMaster(CitizenMaster citizenMaster) {
        this.citizenMaster = citizenMaster;
    }

    

    

    public String addCitizenMaster (){
    citizenMaster.setCitiName(citizenMaster.getCitiName());
    citizenMaster.setCitiFather(citizenMaster.getCitiFather());
    citizenMaster.setCitiMother(citizenMaster.getCitiMother());
    citizenMaster.setCitiNid(citizenMaster.getCitiNid());
    citizenMaster.setCitiVillage(citizenMaster.getCitiVillage());
    citizenMaster.setCitiPostoff(citizenMaster.getCitiPostoff());
    citizenMaster.setCitiWard(citizenMaster.getCitiWard());
    citizenMaster.setCitiGender(citizenMaster.getCitiGender());
    citizenMaster.setCitiMStatus(citizenMaster.getCitiMStatus());
    citizenMaster.setCitiFamiStatus(citizenMaster.getCitiFamiStatus());
    citizenMaster.setCitiFamiNumber(citizenMaster.getCitiFamiNumber());
    citizenMaster.setCitiOccupation(citizenMaster.getCitiOccupation());
    citizenMaster.setCitiFamiIncome(citizenMaster.getCitiFamiIncome());
    citizenMaster.setCitiBirthDate(citizenMaster.getCitiBirthDate());
    citizenMaster.setCitiAge(citizenMaster.getCitiAge());
    citizenMaster.setCitiDesignation(citizenMaster.getCitiDesignation());
    
        boolean status = new AddDao_AllotCategory().addCitizenMaster(citizenMaster);
        if(status){
            FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, "Data Saved", ""));
        }
        else{
        FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_WARN, "Data Not Saved", ""));
        }
    return null;
    }
    
}
