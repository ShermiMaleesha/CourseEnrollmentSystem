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
import java.util.ArrayList;

/**
 *
 * @author U s E r ™
 */
public class Dboperation4 {
    String url = "jdbc:mysql://localhost:3306/nsbm";
    String username = "root";
    String password = "";
    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

    public boolean addPostgraduateSubjects(subjectdetailsdb sub1) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);//get the connection
            String query = "INSERT INTO postgraduate_subjects VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            

            pst = (PreparedStatement) con.prepareStatement(query);

            pst.setInt(1, sub1.getSubject_code1());
            pst.setString(2, sub1.getSubject1());
            pst.setString(3, sub1.getFaculty1());
            pst.setString(4, sub1.getCourse1());
            pst.setString(5, sub1.getLecturer1());
            pst.setString(6, sub1.getFee1());
            pst.setString(7, sub1.getNo_of_credits1());
            pst.setString(8, sub1.getCompulsory1());
            pst.setString(9, sub1.getYear1());
            pst.setString(10, sub1.getSemester1());
            pst.setString(11, sub1.getIns1_1());
            pst.setString(12, sub1.getLab1_1());
            pst.setString(13, sub1.getIns1_2());
            pst.setString(14, sub1.getLab1_2());
            pst.setString(15, sub1.getIns1_3());
            pst.setString(16, sub1.getLab1_3());
            pst.setString(17, sub1.getIns1_4());
            pst.setString(18, sub1.getLab1_4());
            
            
            

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
    public boolean addUndergraduateSubjects(subjectdetailsdb sub2 ) {
        try {
            con = (Connection) DriverManager.getConnection(url, username, password);//get the connection
            String query = "INSERT INTO undergraduate_subjects VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            

            pst = (PreparedStatement) con.prepareStatement(query);

            pst.setInt(1, sub2.getSubject_code2());
            pst.setString(2, sub2.getSubject2());
            pst.setString(3, sub2.getFaculty2());
            pst.setString(4, sub2.getCourse2());
            pst.setString(5, sub2.getLecturer2());
            pst.setString(6, sub2.getFee2());
            pst.setString(7, sub2.getNo_of_credits2());
            pst.setString(8, sub2.getCompulsory2());
            pst.setString(9, sub2.getYear2());
            pst.setString(10, sub2.getSemester2());
            pst.setString(11, sub2.getIns2_1());
            pst.setString(12, sub2.getLab2_1());
            pst.setString(13, sub2.getIns2_2());
            pst.setString(14, sub2.getLab2_2());
            pst.setString(15, sub2.getIns2_3());
            pst.setString(16, sub2.getLab2_3());
            pst.setString(17, sub2.getIns2_4());
            pst.setString(18, sub2.getLab2_4());
            
            

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
     
    public ArrayList<subjectdetailsdb> getPostgraduateSubjects(){
        try {
             ArrayList<subjectdetailsdb> list = new ArrayList<subjectdetailsdb>();
            con = (Connection) DriverManager.getConnection(url, username, password);//get the connection
            
            String query = "SELECT Faculty,Course,Year,Semester,Subject_code,Subject,Fee,Is_Compulsory,No_of_credits FROM postgraduate_subjects";
            

            pst = (PreparedStatement) con.prepareStatement(query);
            rs = pst.executeQuery();
            
            while(rs.next()){
                subjectdetailsdb sdb1 = new subjectdetailsdb();
                sdb1.setFaculty1(rs.getString(1));
                sdb1.setCourse1(rs.getString(2));
                sdb1.setYear1(rs.getString(3));
                sdb1.setSemester1(rs.getString(4));
                sdb1.setSubject_code1(rs.getInt(5));
                sdb1.setSubject1(rs.getString(6));
                sdb1.setFee1(rs.getString(7));
                sdb1.setCompulsory1(rs.getString(8));
                sdb1.setNo_of_credits1(rs.getString(9));
                list.add(sdb1);
            }
            
            return list;
 
        } catch (Exception e) {
            System.out.print(e);
            return null;
            
            
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
    
    public ArrayList<subjectdetailsdb> getUndergraduateSubjects(){
        try {
             ArrayList<subjectdetailsdb> list = new ArrayList<subjectdetailsdb>();
            con = (Connection) DriverManager.getConnection(url, username, password);//get the connection
            
            String query = "SELECT Faculty,Course,Year,Semester,Subject_code,Subject,Fee,Is_Compulsory,No_of_credits FROM undergraduate_subjects";
            

            pst = (PreparedStatement) con.prepareStatement(query);
            rs = pst.executeQuery();
            
            while(rs.next()){
                subjectdetailsdb sdb2 = new subjectdetailsdb();
                sdb2.setFaculty2(rs.getString(1));
                sdb2.setCourse2(rs.getString(2));
                sdb2.setYear2(rs.getString(3));
                sdb2.setSemester2(rs.getString(4));
                sdb2.setSubject_code2(rs.getInt(5));
                sdb2.setSubject2(rs.getString(6));
                sdb2.setFee2(rs.getString(7));
                sdb2.setCompulsory2(rs.getString(8));
                sdb2.setNo_of_credits2(rs.getString(9));
                list.add(sdb2);
            }
            
            return list;
 
        } catch (Exception e) {
            System.out.print(e);
            return null;
            
            
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
