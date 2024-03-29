package com.resident.entity.user;

import com.resident.entity.address.Thana;
import com.resident.entity.admin.User;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Tenant {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String education;
    private String nidNo;
    private String gender;
    private String tinNo;
    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date dateOfBirth;

    private String contractNo;
    @ManyToOne
    @JoinColumn(name = "thana_id")
    private Thana thana;
    private Double income;
    // End personal information section


    // End suporting member session

    private String photo;

    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;

    public Tenant() {
    }

    public Tenant(String name, String education, String nidNo, String gender, String tinNo, Date dateOfBirth, String contractNo, Thana thana, Double income,  String photo, User user) {
        this.name = name;
        this.education = education;
        this.nidNo = nidNo;
        this.gender = gender;
        this.tinNo = tinNo;
        this.dateOfBirth = dateOfBirth;
        this.contractNo = contractNo;
        this.thana = thana;
        this.income = income;

        this.photo = photo;
        this.user = user;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getNidNo() {
        return nidNo;
    }

    public void setNidNo(String nidNo) {
        this.nidNo = nidNo;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getTinNo() {
        return tinNo;
    }

    public void setTinNo(String tinNo) {
        this.tinNo = tinNo;
    }

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getContractNo() {
        return contractNo;
    }

    public void setContractNo(String contractNo) {
        this.contractNo = contractNo;
    }

    public Double getIncome() {
        return income;
    }

    public void setIncome(Double income) {
        this.income = income;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Thana getThana() {
        return thana;
    }

    public void setThana(Thana thana) {
        this.thana = thana;
    }
}
