package uniandes.edu.co.proyecto.modelo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;


@Entity

@Table (name="TiposUsuario")
public class TipoUsuario {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)  

    private Integer id;
    private String tipo;

    public TipoUsuario( String tipo) {
        this.tipo = tipo;
    }

    public TipoUsuario()
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


}