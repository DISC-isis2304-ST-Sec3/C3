package uniandes.edu.co.proyecto.modelo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;


@Entity

@Table (name="PlanesConsumo")
public class PlanConsumo {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)  

    private Integer id;
    private String nombre;
    private Integer descuento;
    private Integer noches;

    @OneToOne
    @JoinColumn(name = "id_reservaHabitacion", referencedColumnName = "id")
    private ReservaHabitacion reservaHabitacion;
    

    public PlanConsumo( String nombre, Integer descuento, Integer noches, ReservaHabitacion reservaHabitacion) {
        this.nombre = nombre;
        this.descuento = descuento;
        this.noches = noches;
        this.reservaHabitacion = reservaHabitacion;
    }

    public PlanConsumo()
    {;}

    public Integer getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Integer getDescuento() {
        return descuento;
    }

    public void setDescuento(Integer descuento) {
        this.descuento = descuento;
    }
    
    public Integer getNoches() {
        return noches;
    }

    public void setNoches(Integer noches) {
        this.noches = noches;
    }

    public ReservaHabitacion getReserHabitacion() {
        return reservaHabitacion;
    }

    public void setReservaHabitacion(ReservaHabitacion reservaHabitacion) {
        this.reservaHabitacion = reservaHabitacion;
    }

}