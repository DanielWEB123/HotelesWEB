/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author CREAXXION-C56T03388
 */
@Entity
@Table(name = "hoteles", catalog = "bd_hoteles", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Hoteles.findAll", query = "SELECT h FROM Hoteles h"),
    @NamedQuery(name = "Hoteles.findById", query = "SELECT h FROM Hoteles h WHERE h.id = :id"),
    @NamedQuery(name = "Hoteles.findByNombre", query = "SELECT h FROM Hoteles h WHERE h.nombre = :nombre"),
    @NamedQuery(name = "Hoteles.findByUbicacion", query = "SELECT h FROM Hoteles h WHERE h.ubicacion = :ubicacion"),
    @NamedQuery(name = "Hoteles.findByCateg", query = "SELECT h FROM Hoteles h WHERE h.categ = :categ"),
    @NamedQuery(name = "Hoteles.findByImagen", query = "SELECT h FROM Hoteles h WHERE h.imagen = :imagen")})

public class Hoteles implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id", nullable = false)

    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "nombre", nullable = false, length = 45)
    
    private String nombre;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "ubicacion", nullable = false, length = 45)
    
    private String ubicacion;
    @Lob
    @Size(max = 65535)
    @Column(name = "descripcion", length = 65535)
    
    private String descripcion;
    @Size(max = 45)
    @Column(name = "categ", length = 45)
    
    private String categ;
    @Size(max = 45)
    @Column(name = "imagen", length = 45)
    
    private String imagen;

    
    
    
    
    public Hoteles() {
    }

    public Hoteles(Integer id) {
        this.id = id;
    }

    public Hoteles(Integer id, String nombre, String ubicacion) {
        this.id = id;
        this.nombre = nombre;
        this.ubicacion = ubicacion;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getCateg() {
        return categ;
    }

    public void setCateg(String categ) {
        this.categ = categ;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Hoteles)) {
            return false;
        }
        Hoteles other = (Hoteles) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.Hoteles[ id=" + id + " ]";
    }
    
}
