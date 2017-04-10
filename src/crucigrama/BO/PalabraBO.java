/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package crucigrama.BO;

import crucigrama.dao.PalabraDAO;
import crucigrama.entidades.Palabra;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

/**
 *
 * @author Pedro
 */
public class PalabraBO {
    
    PalabraDAO pdao;
     PalabraBO palabra;
     Map<String, String> listaPalabras = new HashMap<>();
   
   

    public PalabraBO() {
         this.pdao = new PalabraDAO();
         listaPalabras = new HashMap<>();
           
           
    }
   
    public LinkedList<Palabra> getPalabrasporCategoria(int cat){
        
        LinkedList<Palabra> buscarPalabras = pdao.buscarPalabras(1);
        try{
         
         int c = 0;
         while(c!=buscarPalabras.size()){
            Palabra get = buscarPalabras.get(c);
             //System.out.println(get);
            listaPalabras.put(get.getWord(), get.getPista());
            c++;
         }
         
        }catch(Exception e){
            System.out.println("Ir a PalabrasDAO- Error Conexion");
        }
        return buscarPalabras;
    }
    
    
    
    public Map<String, String> getListaPalabras() {
        return listaPalabras;
    }

    public void setListaPalabras(Map<String, String> listaPalabras) {
        this.listaPalabras = listaPalabras;
    }
    
    
}
