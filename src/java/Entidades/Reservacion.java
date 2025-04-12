/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author CREAXXION-C56T03388
 */
@Entity
@Table(name = "reservacion", catalog = "bd_hoteles", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Reservacion.findAll", query = "SELECT r FROM Reservacion r"),
    @NamedQuery(name = "Reservacion.findById", query = "SELECT r FROM Reservacion r WHERE r.id = :id"),
    @NamedQuery(name = "Reservacion.findByIdUsuario", query = "SELECT r FROM Reservacion r WHERE r.idUsuario = :idUsuario"),
    @NamedQuery(name = "Reservacion.findByIdHabitacion", query = "SELECT r FROM Reservacion r WHERE r.idHabitacion = :idHabitacion"),
    @NamedQuery(name = "Reservacion.findByFechaIngreso", query = "SELECT r FROM Reservacion r WHERE r.fechaIngreso = :fechaIngreso"),
    @NamedQuery(name = "Reservacion.findByFechaSalida", query = "SELECT r FROM Reservacion r WHERE r.fechaSalida = :fechaSalida"),
    @NamedQuery(name = "Reservacion.findByTotal", query = "SELECT r FROM Reservacion r WHERE r.total = :total")})

public class Reservacion implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id", nullable = false)

    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "id_usuario", nullable = false)
    
    private int idUsuario;
    @Basic(optional = false)
    @NotNull
    @Column(name = "id_habitacion", nullable = false)
    
    private int idHabitacion;
    @Column(name = "fecha_ingreso")
    @Temporal(TemporalType.TIMESTAMP)
    
    private Date fechaIngreso;
    @Column(name = "fecha_salida")
    @Temporal(TemporalType.TIMESTAMP)
    
    private Date fechaSalida;
    @Column(name = "total")
    
    private Integer total;

    
    
    
    
    public Reservacion() {
    }

    public Reservacion(Integer id) {
        this.id = id;
    }

    public Reservacion(Integer id, int idUsuario, int idHabitacion) {
        this.id = id;
        this.idUsuario = idUsuario;
        this.idHabitacion = idHabitacion;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getIdHabitacion() {
        return idHabitacion;
    }

    public void setIdHabitacion(int idHabitacion) {
        this.idHabitacion = idHabitacion;
    }

    public Date getFechaIngreso() {
        return fechaIngreso;
    }

    public void setFechaIngreso(Date fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }

    public Date getFechaSalida() {
        return fechaSalida;
    }

    public void setFechaSalida(Date fechaSalida) {
        this.fechaSalida = fechaSalida;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
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
        if (!(object instanceof Reservacion)) {
            return false;
        }
        Reservacion other = (Reservacion) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entidades.Reservacion[ id=" + id + " ]";
    }
    
}
