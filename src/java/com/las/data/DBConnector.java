/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.las.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Thanan Pathman
 */
public class DBConnector {

    static Connection connection = null;
    static Statement statement = null;
    static PreparedStatement pStatement = null;
    static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static final String URL = "jdbc:mysql://localhost/thanan_las_db?useSSL=false";
    static final String USER = "root";
    static final String PASSWORD = "manager";

    protected static Connection connect() {
        try {
            Class.forName(JDBC_DRIVER);
            System.out.println("JDBC Driver Connection Successfull");
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException ex) {
            //Logger.getLogger(DbConnection.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("JDBC Driver Not Found Exception: " + ex.getMessage());
        } catch (SQLException ex) {
            //Logger.getLogger(DbConnection.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Database Connection Error: " + ex.getMessage());
        }

        return connection;
    }

    protected static void closeConnection() {
        if (statement != null) {
            try {
                statement.close();
            } catch (SQLException ex) {
                //Logger.getLogger(DbConnection.class.getName()).log(Level.SEVERE, null, ex);
                System.out.println("Statement Close Exception: " + ex.getMessage());
            }
        }
        if (pStatement != null) {
            try {
                pStatement.close();
            } catch (SQLException ex) {
                //Logger.getLogger(DbConnection.class.getName()).log(Level.SEVERE, null, ex);
                System.out.println("PreparedStatement Close Exception: " + ex.getMessage());
            }
        }
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException ex) {
                //Logger.getLogger(DbConnection.class.getName()).log(Level.SEVERE, null, ex);
                System.out.println("Database Connection Close Exception: " + ex.getMessage());
            }
        }
    }

}
