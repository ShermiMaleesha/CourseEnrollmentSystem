/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package courseenrolmentsystem;

import java.util.ArrayList;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author U s E r ™
 */
public class Show_usubjects extends AbstractTableModel {
   
    public  static final String [] COLUMN_NAMES = {"Faculty","Course","Year","Semester","Subject_code","Subject","Fee","Is_Compulsory","No_of_credits"};
    public static ArrayList<subjectdetailsdb> list;
    
    public Show_usubjects(ArrayList<subjectdetailsdb> ulist){
        list = ulist;
        
    }

    @Override
    public int getRowCount() {
        return list.size();
    }

    
    public String getColumnName(int ColumnIndex){
        return COLUMN_NAMES[ColumnIndex];
        
    }
    
    @Override
    public int getColumnCount() {
        return COLUMN_NAMES.length;
    }

    @Override
    public Object getValueAt(int rowIndex, int columnIndex) {
         switch(columnIndex){
            case 0:
                 return list.get(rowIndex).getFaculty2();
            case 1:
                 return list.get(rowIndex).getCourse2();
            case 2:
                 return list.get(rowIndex).getYear2();
             case 3:
                 return list.get(rowIndex).getSemester2();
            case 4:
                 return list.get(rowIndex).getSubject_code2();
            case 5:
                 return list.get(rowIndex).getSubject2();
            case 6:
                 return list.get(rowIndex).getFee2();
            case 7:
                 return list.get(rowIndex).getCompulsory2();
            case 8:
                 return list.get(rowIndex).getNo_of_credits2();
            
            default:
                    return "error";
         }
    }
    
    
}

    

