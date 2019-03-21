/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package courseenrolmentsystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author U s E r ™
 */
public class Dboperation2 {
    String url = "jdbc:mysql://localhost:3306/nsbm";
    String username = "root";
    String password = "";
    Connection con = null;
    PreparedStatement pst = null;

    public boolean addlecturer(lecturerdetailsdb le1) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);//get the connection
            String query = "INSERT INTO lecturer VALUES(?,?,?,?,?,?,?)";
            

            pst = (PreparedStatement) con.prepareStatement(query);

            pst.setInt(1, le1.getRegid());
            pst.setString(2, le1.getName());
            pst.setString(3, le1.getNIC());
            pst.setString(4, le1.getEmail());
            pst.setString(5, le1.getPhoneNo());
            pst.setString(6, le1.getFaculty());
            pst.setString(7, le1.getSubjects());
           
            
            

            pst.executeUpdate();
            
            return true;

        } catch (Exception e) {
            System.out.print(e);
            return false;
            
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }

            } catch (Exception e) {
            }
        }
    }
     public String getLastId(String tableName, String columnName) {
// Dboperation1.getLastId(tableName,columnName);
         String name ="";
       try{
        Connection  con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/nsbm", "root", "");
        String query = "select "+columnName+" from "+tableName+" order by 1 desc limit 1";
        PreparedStatement stm = con.prepareStatement(query);
        ResultSet rst = stm.executeQuery(query);
        if (rst.next()) {
            name = rst.getString(1);
        }
       }
       catch(Exception e2)
       {
        System.out.println(e2);
        name = null;
       }
       return name;
    }

    
}
