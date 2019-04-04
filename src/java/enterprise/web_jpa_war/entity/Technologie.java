/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package enterprise.web_jpa_war.entity;

import java.io.Serializable;
import java.lang.reflect.Array;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author Utilisateur
 */
@Entity
@Table(name = "TECHNOLOGIE")
public class Technologie implements Serializable {
    
    
    @Id
    @Column(name = "IDTechnologie")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private String idTechnologie;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ID")
    private Person person;
    
    
    @Column(name="NomTechnologie")
    private String nomTechnologie;
    
    public Technologie() {
    }
    
    public Technologie(String nomTechnologie){
        this.nomTechnologie = nomTechnologie;
    }

    public String getNomTechnologie() {
        return nomTechnologie;
    }

    public void setNomTechnologie(String nomTechnologie) {
        this.nomTechnologie = nomTechnologie;
    }
    
        public String getIdTechnologie() {
        return idTechnologie;
    }
}
