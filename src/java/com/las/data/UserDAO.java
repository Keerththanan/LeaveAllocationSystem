/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.las.data;

import com.las.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Thanan Pathman
 */
public class UserDAO {
    Connection connection = null;
    PreparedStatement pStatement = null;
    Statement statement = null;
    ResultSet resultSet = null;
    
    //Check whether a userName is exist or not
    public boolean isUserExist(String uName){
        boolean status = false;
        String searchQuery = "SELECT userName FROM users WHERE userName='" + uName + "'";
        
        try{
            connection = DBConnector.connect();
            statement = connection.createStatement();
            resultSet = statement.executeQuery(searchQuery);
            
            if(resultSet != null){
                status = true;
            }
            
        }catch(Exception e){
            System.out.println("Exception in isUserExist(): " + e);
        }
        return status;
    }
    
    //Get all details of an existing userName
    public User getUserDetails(String uName){
        User user = new User(); 
        String searchQuery = "SELECT * FROM users u JOIN role r ON u.roleId=r.roleId WHERE userName='" + uName + "'";
        
        try{
            connection = DBConnector.connect();
            statement = connection.createStatement();
            resultSet = statement.executeQuery(searchQuery);
            if(resultSet != null){
                while(resultSet.next()){
                    user.setEmailId(resultSet.getString("email"));
                    user.setUserName(resultSet.getString("userName"));
                    user.setPassword(resultSet.getString("password"));
                    user.setRoleId(resultSet.getString("roleId")); 
                }
            }
            else{
                System.out.println("The user name '" + uName + "' is not exist!");
            }
            
        }catch(Exception e){
            System.out.println("Exception in getUserDetails(): " + e);
        }
        return user;
    }
    
}
