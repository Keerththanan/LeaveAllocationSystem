/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.las.model;

/**
 *
 * @author Thanan Pathman
 */
public class User {
    String userName;
    String password;
    String emailId;
    String roleId;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmailId() {
        return emailId;
    }

    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }
    
    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String privilege) {
        this.roleId = privilege;
    }
    
}
