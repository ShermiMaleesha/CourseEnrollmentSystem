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
public  class Show_psubjects extends AbstractTableModel{
    public  static final String [] COLUMN_NAMES = {"Faculty","Course","Year","Semester","Subject_code","Subject","Fee","Is_Compulsory","No_of_credits"};
    public static ArrayList<subjectdetailsdb> list;
    
    public Show_psubjects(ArrayList<subjectdetailsdb> slist){
        list = slist;
        
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
                 return list.get(rowIndex).getFaculty1();
            case 1:
                 return list.get(rowIndex).getCourse1();
            case 2:
                 return list.get(rowIndex).getYear1();
             case 3:
                 return list.get(rowIndex).getSemester1();
            case 4:
                 return list.get(rowIndex).getSubject_code1();
            case 5:
                 return list.get(rowIndex).getSubject1();
            case 6:
                 return list.get(rowIndex).getFee1();
            case 7:
                 return list.get(rowIndex).getCompulsory1();
            case 8:
                 return list.get(rowIndex).getNo_of_credits1();
            
            default:
                    return "error";
         }
    }
    
    
}
