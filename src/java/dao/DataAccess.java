/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conexionbd.conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import modelo.modelo1;

/**
 *
 * @author jeferson
 */
public class DataAccess {
    public void addNew(modelo1 n){
        try {
            PreparedStatement ps = conexion.getPreparestatement("insert into modelo1 values  (?,?,?,?,?,?");
            ps.setInt(1, n.getId());
            ps.setString(2,n.getNombre());
            ps.setString(3,n.getApellido());
            ps.setString(4,n.getCorreo());
            ps.setInt(5,n.getTelefono());
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    
}
    public static List<modelo1> getAll(){
      List<modelo1> ls = new LinkedList<>();
        try {
            ResultSet rs= conexion.getPreparestatement(" select * from modelo1").executeQuery();
            while (rs.next());
            modelo1 n= new modelo1(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
            ls.add(n);
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
      
        
              
            
      return ls;
    }
}
