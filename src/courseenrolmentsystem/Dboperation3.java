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
public class Dboperation3 {
    String url = "jdbc:mysql://localhost:3306/nsbm";
    String username = "root";
    String password = "";
    Connection con = null;
    PreparedStatement pst = null;

    public boolean addinstructor(instructordetailsdb in1) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);//get the connection
            String query = "INSERT INTO instructor VALUES(?,?,?,?,?,?,?,?)";
            

            pst = (PreparedStatement) con.prepareStatement(query);

            pst.setInt(1, in1.getRegid());
            pst.setString(2, in1.getName());
            pst.setString(3, in1.getNIC());
            pst.setString(4, in1.getEmail());
            pst.setString(5, in1.getPhoneNo());
            pst.setString(6, in1.getFaculty());
            pst.setString(7, in1.getSubject());
            pst.setString(8, in1.getLabno());
           
            
            

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
