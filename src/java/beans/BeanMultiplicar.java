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
public class BeanMultiplicar {
    public String mostrarTabla(int numero){
        String tabla = "<table border='1'>";
        for (int i = 1; i <= 10; i++) 
        {
            int resultado = numero * i;
            tabla += "<tr>";
            tabla += "<th>" + numero + " * " + i + " = </th>"; 
            tabla += "<td>" + resultado + "</td>";
            tabla += "</tr>";
        }
        tabla += "</table>";
        return tabla;
    }

    
}
