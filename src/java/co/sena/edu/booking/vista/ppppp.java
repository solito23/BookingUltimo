/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.sena.edu.booking.vista;
import co.sena.edu.booking.DAO.reserDAO;
import co.sena.edu.booking.DTO.reserDTO;
import co.sena.edu.booking.DAO.personasDAO;
import co.sena.edu.booking.DTO.personasDTO;
/**
 *
 * @author user
 */
public class ppppp {
    public static void main(String[] args){
    
     reserDAO per = new reserDAO();
        reserDTO pers = new reserDTO();
        
        int regb = per.contarRegistros();
                System.out.print(regb);
    
    }
    
  
    
    
}
