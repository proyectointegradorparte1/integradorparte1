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
            PreparedStatement ps = conexion.getPreparedStatement("INSERT INTO datos (id,nombre,apellido,correo,telefono) VALUES (?,?,?,?,?)");
            ps.setInt(1, n.getId());
            ps.setString(2,n.getNombre());
            ps.setString(3,n.getApellido());
            ps.setString(4,n.getCorreo());
            ps.setString(5,n.getTelefono());
            ps.executeUpdate();
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    
}
    public static List<modelo1> getAll(){
      List<modelo1> ls = new LinkedList<>();
        try {
            ResultSet rs= conexion.getPreparedStatement(" SELECT * FROM datos").executeQuery();
            while (rs.next()){
            modelo1 n= new modelo1(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
            ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
      
        
              
            
      return ls;
    }
    public static List<modelo1> getNewById(int id){
      List<modelo1> ls = new LinkedList<>();
      String sql= " SELECT * FROM datos WHERE id = " +id;
        try {
            ResultSet rs= conexion.getPreparedStatement(sql).executeQuery();
            while (rs.next()){
            modelo1 n= new modelo1(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
            ls.add(n);
            }
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
      
        
              
            
      return ls;
    }
    
    public void editar(int id,String nombre,String apellido,String correo,String telefono){
         
        try {
           String sql= " update datos SET nombre=?,apellido=?,correo=?,telefono=? " + " where id = ?";
            PreparedStatement ps;
            ps = conexion.getPreparedStatement(sql);
              ps.setString(1, nombre);
              ps.setString(2, apellido);
              ps.setString(3, correo);
              ps.setString(4, telefono);
              ps.setInt(6, id);
              ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
      
        
    }
    
    public void eliminar(int id){
        try {
            String sql= " DELETE datos WHERE id = ?";
            PreparedStatement ps = conexion.getPreparedStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DataAccess.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
