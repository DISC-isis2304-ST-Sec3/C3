package uniandes.edu.co.proyecto.modelo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="Hoteles")

public class Hotel {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO) 

    private Integer id;
    private String nombre;
    private String tipo;
    private String ciudad;
    private String pais;

   

    public Hotel(String nombre, String tipo, String ciudad, String pais)
    {
        this.nombre = nombre;
        this.tipo = tipo;
        this.ciudad = ciudad;
        this.pais = pais;
        
    }

    public Hotel()
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

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }


    
}