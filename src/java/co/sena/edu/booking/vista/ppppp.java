/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.sena.edu.booking.vista;
import co.sena.edu.booking.DAO.nacionalidadesDAO;
import co.sena.edu.booking.DAO.reserDAO;
import co.sena.edu.booking.DTO.reserDTO;
import co.sena.edu.booking.DAO.personasDAO;
import co.sena.edu.booking.DTO.personasDTO;
import co.sena.edu.booking.DTO.ciudadesDTO;
import java.util.LinkedList;
/**
 *
 * @author user
 */
public class ppppp {
    public static void main(String[] args){
    
     nacionalidadesDAO per = new nacionalidadesDAO();
        ciudadesDTO ciu = new ciudadesDTO();
        
       LinkedList<ciudadesDTO> subciudades = new LinkedList<ciudadesDTO>();
       subciudades = per.listarCiudades(1);
       
       for (ciudadesDTO scdto : subciudades) {
           System.out.println(scdto.getCiudad());

       }
    
    }
    
  
    
    
}
