package uniandes.edu.co.proyecto.modelo;

import java.sql.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="ReservasHabitaciones")

public class ReservaHabitacion {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO) 

    private Integer id;
    private Date fechaEntrada;
    private Date fechaSalida;
    private Integer cantidadPersonas;
    
    @OneToOne
    @JoinColumn(name = "id_usuario", referencedColumnName = "id")
    private Usuario cliente;

    @OneToOne
    @JoinColumn(name = "id_planConsumo", referencedColumnName = "id")
    private PlanConsumo plan;

    @OneToOne
    @JoinColumn(name = "id_habitacion", referencedColumnName = "id")
    private Habitacion habitacion;

   

    public ReservaHabitacion(Date fechaEntrada, Date fechaSalida, Integer cantidadPersonas, Usuario cliente, PlanConsumo plan, Habitacion habitacion  )
    {
        this.fechaEntrada = fechaEntrada;
        this.fechaSalida = fechaSalida;
        this.cantidadPersonas = cantidadPersonas;
        this.cliente = cliente;
        this.plan = plan;
        this.habitacion = habitacion;
        
    }

    public ReservaHabitacion()
    {;}

    public Integer getId() {
        return id;
    }
    
    public Date getFechaEntrada() {
        return fechaEntrada;
    }

    public void setFechaEntrada(Date fechaEntrada) {
        this.fechaEntrada = fechaEntrada;
    }

    public Date getFechaSalida() {
        return fechaSalida;
    }

    public void setFechaSalida(Date fechaSalida) {
        this.fechaSalida = fechaSalida;
    }

    public Integer getCantidadPersonas() {
        return cantidadPersonas;
    }

    public void setCantidadPersonas(Integer cantidadPersonas) {
        this.cantidadPersonas = cantidadPersonas;
    }

    public Usuario getCliente() {
        return cliente;
    }

    public void setCliente(Usuario cliente) {
        this.cliente = cliente;
    }

    public PlanConsumo getPlan() {
        return plan;
    }

    public void setPlan(PlanConsumo plan) {
        this.plan = plan;
    }

    public Habitacion getHabitacion() {
        return habitacion;
    }

    public void setPlan(Habitacion habitacion) {
        this.habitacion = habitacion;
    }


    
}