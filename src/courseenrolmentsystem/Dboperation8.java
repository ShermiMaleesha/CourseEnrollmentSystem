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
public class Dboperation8 {
    String url = "jdbc:mysql://localhost:3306/nsbm";
    String username = "root";
    String password = "";
    Connection con = null;
    PreparedStatement pst = null;

    public boolean addpostgraduatelab(labdetailsdb lb1) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);//get the connection
            String query = "INSERT INTO postgraduate_lab VALUES(?,?,?,?,?,?)";
            

            pst = (PreparedStatement) con.prepareStatement(query);

            pst.setInt(1, lb1.getLabnum1());
            pst.setString(2, lb1.getRegid1());
            pst.setString(3, lb1.getFaculty1());
            pst.setString(4, lb1.getCourse1());
            pst.setString(5, lb1.getSubcode1());
            pst.setString(6, lb1.getLab_no1());
           
            

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
    
    public boolean addundergraduatelab(labdetailsdb lb2) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);//get the connection
            String query = "INSERT INTO undergraduate_lab VALUES(?,?,?,?,?,?)";
            

            pst = (PreparedStatement) con.prepareStatement(query);

            pst.setInt(1, lb2.getLabnum2());
            pst.setString(2, lb2.getRegid2());
            pst.setString(3, lb2.getFaculty2());
            pst.setString(4, lb2.getCourse2());
            pst.setString(5, lb2.getSubcode2());
            pst.setString(6, lb2.getLab_no2());
           
            

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
