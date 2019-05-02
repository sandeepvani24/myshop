/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import database.DbConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Product;
import model.User;

/**
 *
 * @author Sandeep.vani
 */
public class UserDao {

    public static List<User> getusers() {
        return null;
        
    }
    
    public List<User> getUsers(){
        
        List<User> users = new ArrayList<>();
       
        try{          
            Connection con = DbConnection.getConnection();

            String query = "Select * From users";

            Statement stmt = con.createStatement();

            ResultSet rs = stmt.executeQuery(query); 
            
            
            while(rs.next()){
                
                if( rs.isLast()){break;}
                
                User user = new User();

                user.setId(rs.getInt("id"));
                user.setFullname(rs.getString("fullname"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setPhone(rs.getInt("phone"));              

                users.add(user);
                con.close();
            }  
        } catch(Exception e){            
            e.printStackTrace();
        }       
        return users;
    }
    
    public int saveUser(User user){  
        try{  
            Connection con = DbConnection.getConnection();
        
            String query = "INSERT INTO users(fullname,email,password,phone) VALUES('"+
                
                user.getFullname()+"','"+ 
                user.getEmail()
                +"',"+
                user.getPassword()
                +","+
                user.getPhone()                
                +")";
        
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query); 
        }catch(Exception e){            
            e.printStackTrace();
        }
        return 0;
    }  
    public int updateUser(User user){  
        
        try{  
            Connection con = DbConnection.getConnection();
        
            String query = "UPDATE products SET "
                    + "fullname='"+user.getFullname()+"',"
                    + "email='"+user.getEmail()+"',"
                    + "password="+ user.getPassword()
                    + "phone="+user.getPhone()+" WHERE id="+ user.getId();             
        
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query); 
        }catch(Exception e){            
            e.printStackTrace();
        }
        
       return 0;
    }  
    public int deleteUser(User user){  
         try{  
            Connection con = DbConnection.getConnection();        
            String query = "DELETE users WHERE id="+ user.getId();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query); 
        }catch(Exception e){            
            e.printStackTrace();
        }
        return 0;
    }      
}
