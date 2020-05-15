package model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the tabusuario database table.
 * 
 */
@Entity
@NamedQuery(name="Tabusuario.findAll", query="SELECT t FROM Tabusuario t")
public class Tabusuario implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int idUsuario;

	private String contrasena;

	private String nombre;

	public Tabusuario() {
	}

	public int getIdUsuario() {
		return this.idUsuario;
	}

	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getContrasena() {
		return this.contrasena;
	}

	public void setContrasena(String contrasena) {
		this.contrasena = contrasena;
	}

	public String getNombre() {
		return this.nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

}