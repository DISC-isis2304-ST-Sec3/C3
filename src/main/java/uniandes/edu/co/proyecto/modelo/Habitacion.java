package uniandes.edu.co.proyecto.modelo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;


@Entity

@Table (name="Habitaciones")
public class Habitacion {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)  

    private Integer id;
    private String tipo;
    private Integer capacidad;
    private Integer costoPorNoche;

    @ManyToOne
    @JoinColumn(name = "id_hotel", referencedColumnName = "id")
    private Hotel hotel;
    

    public Habitacion( String tipo, Integer capacidad, Integer costoPorNoche, Hotel hotel) {
        this.tipo = tipo;
        this.capacidad = capacidad;
        this.costoPorNoche = costoPorNoche;
        this.hotel = hotel;
    }

    public Habitacion()
    {;}

    public Integer getId() {
        return id;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public Integer getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(Integer capacidad) {
        this.capacidad = capacidad;
    }
    
    public Integer getCostoPorNoche() {
        return costoPorNoche;
    }

    public void setCostoPorNoche(Integer costoPorNoche) {
        this.costoPorNoche = costoPorNoche;
    }

}