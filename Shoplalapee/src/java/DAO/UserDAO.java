/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;

import Model.User.Account;
import Model.User.Oauth_Account;
import Model.User.Role;
import java.sql.*;
import Model.User.Store;
import Model.User.User;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserDAO extends dbConfig {

    
    public boolean changePassword(String password, String user_id) {
        String sql = "UPDATE [Account] SET password = ? WHERE user_id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, password);
            ps.setString(2, user_id); // Change to setString since user_id is a String
            int rs = ps.executeUpdate();
           return rs > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean checkLogin(Account account) {
        String sql = "SELECT * FROM [Account] WHERE [Account].username = ? AND [Account].[password] = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, account.getUsername());
            ps.setString(2, account.getPassword());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception ex) {

        }
        return false;
    }
    public boolean checkIsActive(Account account){
        String sql = "SELECT * FROM [Account] WHERE [Account].username = ? AND [Account].[password] = ? and status =1";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, account.getUsername());
            ps.setString(2, account.getPassword());
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (Exception ex) {

        }
        return false;
    }

    public Account getAccountById(String username, String password) {
        String sql = "SELECT * FROM [Account] WHERE username = ? AND password = ?";
        Account account = null;

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                account = new Account();
                account.setUser_id(rs.getInt("user_id"));
                account.setUsername(rs.getString("username"));
                account.setPassword(rs.getString("password"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return account;
    }

   
  


}
