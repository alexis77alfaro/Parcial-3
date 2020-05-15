package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the tblconsultas database table.
 * 
 */
@Entity
@Table(name="tblconsultas")
@NamedQuery(name="Tblconsulta.findAll", query="SELECT t FROM Tblconsulta t")
public class Tblconsulta implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idConsulta;

	private String apellido;

	private String nombre;

	public Tblconsulta() {
	}

	public int getIdConsulta() {
		return this.idConsulta;
	}

	public void setIdConsulta(int idConsulta) {
		this.idConsulta = idConsulta;
	}

	public String getApellido() {
		return this.apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

}