/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.sena.edu.booking.vista;
import co.sena.edu.booking.DAO.personasDAO;
import co.sena.edu.booking.DTO.personasDTO;
/**
 *
 * @author user
 */
public class ppppp {
    public static void main(String[] args){
    
     personasDAO per = new personasDAO();
        personasDTO pers = new personasDTO();
        
        int regb = per.contarRegistros();
                System.out.print(regb);
    
    }
}
