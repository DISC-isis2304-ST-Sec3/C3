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

@Table (name="TipoHabitaciones")
public class TipoHabitacion {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)  

    private Integer id;
    private String descripcion;
    private String dotacion;
    

    @OneToOne
    @JoinColumn(name = "id_habitacion", referencedColumnName = "id")
    private Habitacion habitacion;
    

    public TipoHabitacion( String descripcion, String dotacion, Habitacion habitacion) {
        this.descripcion = descripcion;
        this.dotacion = dotacion;
        this.habitacion = habitacion;
        
    }

    public TipoHabitacion()
    {;}

    public Integer getId() {
        return id;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getDotacion() {
        return dotacion;
    }

    public void setDotacion(String dotacion) {
        this.dotacion = dotacion;
    }
    
    public Habitacion getHabitacion() {
        return habitacion;
    }

    public void setHabitacion(Habitacion habitacion) {
        this.habitacion = habitacion;
    }
}