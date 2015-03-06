/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.sena.edu.booking.DTO;

/**
 *
 * @author Tomoko
 */
public class personasDTO {
   
    private long idPersona;
    private String correoElectronico;
    private String pais;
    private String idNacionalidad;
    private String nombres;
    private String apellidos;
    private String fechaNto;
    private int telefono;
    private String contraseña;
    private String idestadousuarios;
    private String observaciones;

    @Override
    public String toString() {
        return "personasDTO{" + "idPersona=" + idPersona + ","
                + " correoElectronico=" + correoElectronico + 
                ", pais=" + pais + ", idNacionalidad=" + idNacionalidad + 
                ", nombres=" + nombres + ", apellidos=" + apellidos + ", "
                + "fechaNto=" + fechaNto + ", telefono=" + telefono + ", "
                + "contrase\u00f1a=" + contraseña + ", idestadousuarios=" + 
                idestadousuarios + ", observaciones=" + observaciones + '}';
    }

    public long getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(long idPersona) {
        this.idPersona = idPersona;
    }

    public String getCorreoElectronico() {
        return correoElectronico;
    }

    public void setCorreoElectronico(String correoElectronico) {
        this.correoElectronico = correoElectronico;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getIdNacionalidad() {
        return idNacionalidad;
    }

    public void setIdNacionalidad(String idNacionalidad) {
        this.idNacionalidad = idNacionalidad;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getFechaNto() {
        return fechaNto;
    }

    public void setFechaNto(String fechaNto) {
        this.fechaNto = fechaNto;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public String getIdestadousuarios() {
        return idestadousuarios;
    }

    public void setIdestadousuarios(String idestadousuarios) {
        this.idestadousuarios = idestadousuarios;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }

   

  

}