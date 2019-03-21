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
public class Dboperation5 {

    String url = "jdbc:mysql://localhost:3306/nsbm";
    String username = "root";
    String password = "";
    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

    public boolean selectPostgraduateSubjects(Select_subject_detailsdb sele1) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);//get the connection
            String query = "INSERT INTO postgraduate_select_subjects VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            

            pst = (PreparedStatement) con.prepareStatement(query);

            pst.setString(1, sele1.getReg_no1());
            pst.setString(2, sele1.getFaculty1());
            pst.setString(3, sele1.getCourse1());
            pst.setString(4, sele1.getYear1());
            pst.setString(5, sele1.getSemester1());
            pst.setString(6, sele1.getSubcode1_1());
            pst.setString(7, sele1.getSub1_1());
            pst.setString(8, sele1.getSubcode2_1());
            pst.setString(9, sele1.getSub2_1());
            pst.setString(10, sele1.getSubcode3_1());
            pst.setString(11, sele1.getSub3_1());
            pst.setString(12, sele1.getSubcode4_1());
            pst.setString(13, sele1.getSub4_1());
            pst.setString(14, sele1.getSubcode5_1());
            pst.setString(15, sele1.getSub5_1());
            pst.setString(16, sele1.getSubcode6_1());
            pst.setString(17, sele1.getSub6_1());
            
            
            
            

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
    public boolean selectUndergraduateSubjects(Select_subject_detailsdb sele2) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);//get the connection
            String query = "INSERT INTO undergraduate_select_subject VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            

            pst = (PreparedStatement) con.prepareStatement(query);

            pst.setString(1, sele2.getReg_no2());
            pst.setString(2, sele2.getFaculty2());
            pst.setString(3, sele2.getCourse2());
            pst.setString(4, sele2.getYear2());
            pst.setString(5, sele2.getSemester2());
            pst.setString(6, sele2.getSubcode1_2());
            pst.setString(7, sele2.getSub1_2());
            pst.setString(8, sele2.getSubcode2_2());
            pst.setString(9, sele2.getSub2_2());
            pst.setString(10, sele2.getSubcode3_2());
            pst.setString(11, sele2.getSub3_2());
            pst.setString(12, sele2.getSubcode4_2());
            pst.setString(13, sele2.getSub4_2());
            pst.setString(14, sele2.getSubcode5_2());
            pst.setString(15, sele2.getSub5_2());
            pst.setString(16, sele2.getSubcode6_2());
            pst.setString(17, sele2.getSub6_2());
            
            

            pst.executeUpdate();
            
            return true;

        } catch (Exception e1) {
            System.out.print(e1);
            return false;
            
        } finally {
            try {
                if (pst != null) {
                    pst.close();
                }
                if (con != null) {
                    con.close();
                }

            } catch (Exception e1) {
            }
        }
    
    }
}
     
     
