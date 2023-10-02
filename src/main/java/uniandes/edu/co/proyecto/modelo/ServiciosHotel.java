package uniandes.edu.co.proyecto.modelo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;


@Entity

@Table (name="ServiciosHotel")
public class ServiciosHotel {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)  

    private Integer id;
    private String nombre;


    @ManyToOne
    @JoinColumn(name = "id_hotel", referencedColumnName = "id")
    private Hotel hotel;
    

    public ServiciosHotel( String nombre, Hotel hotel) {
        this.nombre = nombre;
        this.hotel = hotel;
    }

    public ServiciosHotel()
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

}