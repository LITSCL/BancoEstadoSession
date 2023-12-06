package cl.inacap.bancoestadosession.model;

public class Usuario {
	String rut;
	String clave;
	
	public Usuario(String rut, String clave) {
		super();
		this.rut = rut;
		this.clave = clave;
	}
	public String getRut() {
		return rut;
	}
	public void setRut(String rut) {
		this.rut = rut;
	}
	public String getClave() {
		return clave;
	}
	public void setClave(String clave) {
		this.clave = clave;
	}
}
