/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package courseenrolmentsystem;

/*import com.mysql.jdbc.PreparedStatement;
import java.sql.Connection;*/
import java.sql.DriverManager;
import java.sql.*;


/**
 *
 * @author U s E r ™
 */
public class Dboperation1 {
    String url = "jdbc:mysql://localhost:3306/nsbm";
    String username = "root";
    String password = "";
    Connection con = null;
    PreparedStatement pst = null;

    public boolean addUndergraduateStudent(Studentdetailsdb s1) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);//get the connection
            String query = "INSERT INTO undergraduate VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            

            pst = (PreparedStatement) con.prepareStatement(query);

            pst.setInt(1, s1.getRegid1());
            pst.setString(2, s1.getName1());
            pst.setString(3, s1.getNIC1());
            pst.setString(4, s1.getDOB1());
            pst.setString(5, s1.getGender1());
            pst.setString(6, s1.getIntakeYear1());
            pst.setString(7, s1.getInatakeMonth1());
            pst.setString(8, s1.getEmail1());
            pst.setString(9, s1.getPhoneNo1());
            pst.setString(10, s1.getAddress1());
            pst.setString(11, s1.getFaculty1());
            pst.setString(12, s1.getCourse1());
            pst.setString(13, s1.getYear1());
            pst.setString(14, s1.getAttempt());
            pst.setString(15, s1.getSubject1());
            pst.setString(16, s1.getSubject1Mark());
            pst.setString(17, s1.getSubject2());
            pst.setString(18, s1.getSubject2Mark());
            pst.setString(19, s1.getSubject3());
            pst.setString(20, s1.getSubject3Mark());
            pst.setString(21, s1.getSubject4());
            pst.setString(22, s1.getSubject4Mark());
            pst.setString(23, s1.getDistrict());
            pst.setString(24, s1.getRank());
            
            

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
    public boolean addPostgraduateStudent(Studentdetailsdb s2) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);//get the connection
            String query = "INSERT INTO postgraduate VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            

            pst = (PreparedStatement) con.prepareStatement(query);

            pst.setInt(1, s2.getRegid2());
            pst.setString(2, s2.getName2());
            pst.setString(3, s2.getNIC2());
            pst.setString(4, s2.getDOB2());
            pst.setString(5, s2.getGender2());
            pst.setString(6, s2.getIntakeYear2());
            pst.setString(7, s2.getInatakeMonth2());
            pst.setString(8, s2.getEmail2());
            pst.setString(9, s2.getPhoneNo2());
            pst.setString(10, s2.getAddress2());
            pst.setString(11, s2.getFaculty2());
            pst.setString(12, s2.getCourse2());
            pst.setString(13, s2.getQualificationType());
            pst.setString(14, s2.getInstitute());
            pst.setString(15, s2.getYearOfCompletion());
            
            

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
    

