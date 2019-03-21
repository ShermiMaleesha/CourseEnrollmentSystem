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
public class Dboperation7 {
    String url = "jdbc:mysql://localhost:3306/nsbm";
    String username = "root";
    String password = "";
    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

    public boolean addPostgraduateResults(Addresultdb re1) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);//get the connection
            String query = "INSERT INTO postgraduate_results VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            

            pst = (PreparedStatement) con.prepareStatement(query);

            pst.setString(1, re1.getReg_no1());
            pst.setString(2, re1.getFaculty1());
            pst.setString(3, re1.getCourse1());
            pst.setString(4, re1.getYear1());
            pst.setString(5, re1.getSemester1());
            pst.setString(6, re1.getSubcode1_1());
            pst.setString(7, re1.getResult1_1());
            pst.setString(8, re1.getSubcode2_1());
            pst.setString(9, re1.getResult2_1());
            pst.setString(10, re1.getSubcode3_1());
            pst.setString(11, re1.getResult3_1());
            pst.setString(12, re1.getSubcode4_1());
            pst.setString(13, re1.getResult4_1());
            pst.setString(14, re1.getSubcode5_1());
            pst.setString(15, re1.getResult5_1());
            pst.setString(16, re1.getSubcode6_1());
            pst.setString(17, re1.getResult6_1());
            pst.setString(18, re1.getRank1());
            pst.setString(19, re1.getGpa1());
            //pst.setString(20, re1.getEmail_1());
            
            
            

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
    
    public boolean addUndergraduateResults(Addresultdb re2) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);//get the connection
            String query = "INSERT INTO undergraduate_results VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            

            pst = (PreparedStatement) con.prepareStatement(query);

            pst.setString(1, re2.getReg_no2());
            pst.setString(2, re2.getFaculty2());
            pst.setString(3, re2.getCourse2());
            pst.setString(4, re2.getYear2());
            pst.setString(5, re2.getSemester2());
            pst.setString(6, re2.getSubcode1_2());
            pst.setString(7, re2.getResult1_2());
            pst.setString(8, re2.getSubcode2_2());
            pst.setString(9, re2.getResult2_2());
            pst.setString(10, re2.getSubcode3_2());
            pst.setString(11, re2.getResult3_2());
            pst.setString(12, re2.getSubcode4_2());
            pst.setString(13, re2.getResult4_2());
            pst.setString(14, re2.getSubcode5_2());
            pst.setString(15, re2.getResult5_2());
            pst.setString(16, re2.getSubcode6_2());
            pst.setString(17, re2.getResult6_2());
            pst.setString(18, re2.getRank2());
            pst.setString(19, re2.getGpa2());
            //pst.setString(20, re2.getEmail_2());
            
            
            
            

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


    
}
