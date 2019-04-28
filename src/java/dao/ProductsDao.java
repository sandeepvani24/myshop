/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
import model.Product;

/**
 *
 * @author Mohit
 */
public class ProductsDao {     
    
    public List<Product> getProducts(){
        
        List<Product> products = new ArrayList<>();
       
        try{          
            Connection con = DbConnection.getConnection();

            String query = "Select * From products";

            Statement stmt = con.createStatement();

            ResultSet rs = stmt.executeQuery(query); 
            
            
            while(rs.next()){
                
                if( rs.isLast()){break;}
                
                Product product = new Product();

                product.setId(rs.getInt("id"));
                product.setProductName(rs.getString("product_name"));
                product.setProductImage(rs.getString("product_image"));
                product.setPrice(rs.getDouble("price"));
                product.setSalePrice(rs.getDouble("sale_price"));
                product.setCategoryId(rs.getInt("category_id"));
                product.setDiscount(rs.getDouble("discount"));

                products.add(product);
                con.close();
            }  
        } catch(Exception e){            
            e.printStackTrace();
        }       
        return products;
    }
    
    public int saveProduct(Product product){  
       return 0;
    }  
    public int updateProduct(Product product){  
       return 0;
    }  
    public int deleteProduct(Product product){  
        return 0;
    }      
}
