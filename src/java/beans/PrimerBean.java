/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author Alumno
 */
public class PrimerBean {
    public String getSaludo(){
        return "Hoy es viernes";
    }
    
    public String mostrarNombre(String nombre){
        return "<h1>Bienvenido, " + nombre + "</h1>";
    }
}
