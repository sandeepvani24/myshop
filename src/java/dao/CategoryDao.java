
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
        
         List<Category> categories = new ArrayList<>();
       
        try{          
            Connection con = DbConnection.getConnection();

            String query = "Select * From categories";

            Statement stmt = con.createStatement();

            ResultSet rs = stmt.executeQuery(query); 
            
            
            while(rs.next()){                            
                
                Category category = new Category();

                category.setId(rs.getInt("id"));
                category.setName(rs.getString("name"));
                category.setDescription(rs.getString("description"));  
                category.setImage(rs.getString("image"));
                categories.add(category);                
            }  
            con.close();
        } catch(Exception e){            
            e.printStackTrace();
        }       
        return categories;
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

    
    

