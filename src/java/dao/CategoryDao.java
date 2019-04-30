
package dao;

import database.DbConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;


public class CategoryDao {

    public List<Category> getCategory() {
        
         List<Category> category = new ArrayList<>();
       
        try{          
            Connection con = DbConnection.getConnection();

            String query = "Select * From category";

            Statement stmt = con.createStatement();

            ResultSet rs = stmt.executeQuery(query); 
            
            
            while(rs.next()){                            
                
                Category category = new Category ();

             category.setId(rs.getInt("id"));
             category.setCategoryname(rs.getString("category_name"));
             category.setdescription("category_desc");  

               category.add(category);                
            }  
            con.close();
        } catch(Exception e){            
            e.printStackTrace();
        }       
        return category;
    }
    
    public int saveCategory(Category category){  
       return 0;
    }  
    public int updateCategory(Category category){  
       return 0;
    }  
    public int deleteCategory(Category category){  
        return 0;
    }      
}

    
    

