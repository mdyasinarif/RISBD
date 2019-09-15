package com.resident.controller;

import com.resident.entity.admin.Role;
import com.resident.entity.admin.User;
import com.resident.entity.buliding.Building;
import com.resident.entity.buliding.Flat;
import com.resident.entity.user.HouseOwner;
import com.resident.entity.user.Police;
import com.resident.entity.user.Tenant;
import com.resident.repo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

@ControllerAdvice
public class CurrentUserAdvice {
    @Autowired
    private BuildingRepo buildingRepo;
    @Autowired
    private HouseOwnerRepo houseOwnerRepo;
    @Autowired
    private FlatRepo flatRepo;
    @Autowired
    private TenantRepo tenantRepo;
    @Autowired
    private UserRepo userRepo;

    @Autowired
    private PoliceRepo policeRepo;


    @ModelAttribute("global")
    public HouseOwner currentUserH(){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        HouseOwner currentUserH = this.houseOwnerRepo.findByUser(this.userRepo.findByUserName(auth.getName()));
        return currentUserH;
    }
    @ModelAttribute("globalp")
    public Police currentUserP(){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        Police currentUserP = this.policeRepo.findByUser(this.userRepo.findByUserName(auth.getName()));
        return currentUserP;
    }
    @ModelAttribute("globalt")
    public Tenant currentUsert(){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        Tenant currentUsert = this.tenantRepo.findByUser(this.userRepo.findByUserName(auth.getName()));
        return currentUsert;
    }



}
