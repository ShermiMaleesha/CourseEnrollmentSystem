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
public class Dboperation6 {
    String url = "jdbc:mysql://localhost:3306/nsbm";
    String username = "root";
    String password = "";
    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
    
    public boolean addPostgraduatePayment(paymentdetailsdb pay1) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);//get the connection
            String query = "INSERT INTO postgraduate_payment VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            

            pst = (PreparedStatement) con.prepareStatement(query);

            pst.setString(1, pay1.getReg_no1());
            pst.setString(2, pay1.getYear1());
            pst.setString(3, pay1.getSemester1());
            pst.setString(4, pay1.getSubcode1_1());
            pst.setString(5, pay1.getSubcode2_1());
            pst.setString(6, pay1.getSubcode3_1());
            pst.setString(7, pay1.getSubcode4_1());
            pst.setString(8, pay1.getSubcode5_1());
            pst.setString(9, pay1.getSubcode6_1());
            pst.setString(10, pay1.getFee1_1());
            pst.setString(11, pay1.getFee1_2());
            pst.setString(12, pay1.getFee1_3());
            pst.setString(13, pay1.getFee1_4());
            pst.setString(14, pay1.getFee1_5());
            pst.setString(15, pay1.getFee1_6());
            pst.setString(16, pay1.getTotal_1());
            
            

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
    
    public boolean addUndergraduatePayment(paymentdetailsdb pay2) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);//get the connection
            String query = "INSERT INTO undergraduate_payment VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            

            pst = (PreparedStatement) con.prepareStatement(query);

            pst.setString(1, pay2.getReg_no2());
            pst.setString(2, pay2.getYear2());
            pst.setString(3, pay2.getSemester2());
            pst.setString(4, pay2.getSubcode1_2());
            pst.setString(5, pay2.getSubcode2_2());
            pst.setString(6, pay2.getSubcode3_2());
            pst.setString(7, pay2.getSubcode4_2());
            pst.setString(8, pay2.getSubcode5_2());
            pst.setString(9, pay2.getSubcode6_2());
            pst.setString(10, pay2.getFee2_1());
            pst.setString(11, pay2.getFee2_2());
            pst.setString(12, pay2.getFee2_3());
            pst.setString(13, pay2.getFee2_4());
            pst.setString(14, pay2.getFee2_5());
            pst.setString(15, pay2.getFee2_6());
            pst.setString(16, pay2.getTotal_2());
            
            

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
