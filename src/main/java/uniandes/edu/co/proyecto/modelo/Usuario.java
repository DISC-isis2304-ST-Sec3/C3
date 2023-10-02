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

@Table (name="Usuarios")
public class Usuario {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)  

    private Integer id;
    private String nombre;
    private Integer documento;
    private String correo;

    @OneToOne
    @JoinColumn(name = "id_tipoUsuario", referencedColumnName = "id")
    private TipoUsuario tipoUsuario;

    @OneToOne
    @JoinColumn(name = "id_reservaHabitacion", referencedColumnName = "id")
    private ReservaHabitacion reservaHabitacion;
    

    public Usuario( String nombre, Integer documento, String correo, TipoUsuario tipoUsuario, ReservaHabitacion reservaHabitacion) {
        this.nombre = nombre;
        this.documento = documento;
        this.correo = correo;
        this.tipoUsuario = tipoUsuario;
        this.reservaHabitacion = reservaHabitacion;
    }

    public Usuario()
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

    public Integer getDocumento() {
        return documento;
    }

    public void setDocumento(Integer documento) {
        this.documento = documento;
    }
    
    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public TipoUsuario getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(TipoUsuario tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    public ReservaHabitacion getReservaHabitacion() {
        return reservaHabitacion;
    }

    public void setReservaHabitacion(ReservaHabitacion reservaHabitacion) {
        this.reservaHabitacion = reservaHabitacion;
    }

}