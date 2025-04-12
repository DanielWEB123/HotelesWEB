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
@Table(name = "habitacion", catalog = "bd_hoteles", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Habitacion.findAll", query = "SELECT h FROM Habitacion h"),
    @NamedQuery(name = "Habitacion.findById", query = "SELECT h FROM Habitacion h WHERE h.id = :id"),
    @NamedQuery(name = "Habitacion.findByIdHotel", query = "SELECT h FROM Habitacion h WHERE h.idHotel = :idHotel"),
    @NamedQuery(name = "Habitacion.findByTipo", query = "SELECT h FROM Habitacion h WHERE h.tipo = :tipo"),
    @NamedQuery(name = "Habitacion.findByNumCam", query = "SELECT h FROM Habitacion h WHERE h.numCam = :numCam"),
    @NamedQuery(name = "Habitacion.findByNumBan", query = "SELECT h FROM Habitacion h WHERE h.numBan = :numBan"),
    @NamedQuery(name = "Habitacion.findByPrecio", query = "SELECT h FROM Habitacion h WHERE h.precio = :precio")})

public class Habitacion implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id", nullable = false)
   
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "id_hotel", nullable = false)
    
    private int idHotel;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "tipo", nullable = false, length = 45)
    
    private String tipo;
    @Basic(optional = false)
    @NotNull
    @Column(name = "num_cam", nullable = false)
    
    private int numCam;
    @Basic(optional = false)
    @NotNull
    @Column(name = "num_ban", nullable = false)
    
    private int numBan;
    @Basic(optional = false)
    @NotNull
    @Column(name = "precio", nullable = false)
    
    private int precio;
    @Lob
    @Size(max = 65535)
    @Column(name = "descrip", length = 65535)
    private String descrip;

    
    
    
    public Habitacion() {
    }

    public Habitacion(Integer id) {
        this.id = id;
    }

    public Habitacion(Integer id, int idHotel, String tipo, int numCam, int numBan, int precio) {
        this.id = id;
        this.idHotel = idHotel;
        this.tipo = tipo;
        this.numCam = numCam;
        this.numBan = numBan;
        this.precio = precio;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getIdHotel() {
        return idHotel;
    }

    public void setIdHotel(int idHotel) {
        this.idHotel = idHotel;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public int getNumCam() {
        return numCam;
    }

    public void setNumCam(int numCam) {
        this.numCam = numCam;
    }

    public int getNumBan() {
        return numBan;
    }

    public void setNumBan(int numBan) {
        this.numBan = numBan;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public String getDescrip() {
        return descrip;
    }

    public void setDescrip(String descrip) {
        this.descrip = descrip;
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
        if (!(object instanceof Habitacion)) {
            return false;
        }
        Habitacion other = (Habitacion) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.Habitacion[ id=" + id + " ]";
    }
    
}
