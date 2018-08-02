/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package addhandler;

import dao.AddDao_CitizenMaster;
import entity.AllotCategory;
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
public class AllotCategoryMB {
    AllotCategory allotCategory = new AllotCategory();

    public AllotCategory getAllotCategory() {
        return allotCategory;
    }

    public void setAllotCategory(AllotCategory allotCategory) {
        this.allotCategory = allotCategory;
    }

    public String addAllotCategory (){
    allotCategory.setAllotName(allotCategory.getAllotName());
    allotCategory.setAllotCategory(allotCategory.getAllotCategory());
    allotCategory.setAllotUnit(allotCategory.getAllotUnit());
    allotCategory.setAllotAmount(allotCategory.getAllotAmount());
    allotCategory.setAllotName(allotCategory.getAllotName());
        boolean status = new AddDao_CitizenMaster().addAllotCategory(allotCategory);
        if(status){
            FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, "Data Saved", ""));
        }
        else{
        FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_WARN, "Data Not Saved", ""));
        }
    return null;
    }
    
}
