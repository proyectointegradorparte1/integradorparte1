/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexionbd;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


/**
 *
 * @author jeferson
 */
public class conexion {
    public static PreparedStatement getPreparestatement(String sql) throws ClassNotFoundException, SQLException{
        PreparedStatement ps = null;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String url = "jdbc:sqlservert://localhost:1433;databaseName=registro";
        String user="root";
        String  pass="";
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/registro","root","");
        ps= con.prepareStatement(sql);
                return ps;
    }
//    public static void main(String[] args) throws ClassNotFoundException, SQLException{
//        getPreparestatement("select * from new ");
//    }
}
