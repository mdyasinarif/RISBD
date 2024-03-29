package com.resident.entity.address;

import javax.persistence.*;

@Entity
public class District {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    @ManyToOne
    @JoinColumn(name = "division_id")
    private Division division;

    private String name;
    private String bnName;

    public District() {
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

    public Division getDivision() {
        return division;
    }

    public void setDivision(Division division) {
        this.division = division;
    }

    public String getBnName() {
        return bnName;
    }

    public void setBnName(String bnName) {
        this.bnName = bnName;
    }
}

