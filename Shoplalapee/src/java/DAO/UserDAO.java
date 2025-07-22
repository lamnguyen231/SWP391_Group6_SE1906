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

    public UserDAO() {
        super();
    }

    public void authenticationAccount(String username) {
        try {
   String sql = "UPDATE Account SET auth = 1 WHERE username = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            int x = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public boolean addUser(User user) {
        // call procedure from database;
        String sql = "CALL insert_into_User_Account(?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setNString(1, user.getFullname());
            ps.setString(2, user.getEmail());
            ps.setInt(3, user.getGender());
            ps.setString(4, user.getAddress());
            ps.setDate(5, user.getDOB());
            ps.setString(6, user.getImage());
            ps.setInt(7, user.getRole().getRole_id());
            ps.setString(8, user.getUsername());
            ps.setString(9, user.getPassword());
            int x = ps.executeUpdate();
            return x != 0;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
 public void addStore(Store store) {
String sql = "INSERT INTO Stores\n"
           + "(store_id, store_name, store_phone, store_address, store_image)\n"
           + "VALUES (?, ?, ?, ?, ?);";


        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, store.getUser_id());
            ps.setString(2, store.getStore_name());
            ps.setString(3, store.getStore_phone());
            ps.setString(4, store.getStore_address());
            ps.setString(5, store.getStore_image());
            int x = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
 public Store getStoreByStoreId(int id) {
        Store st = new Store();
        String sql = "SELECT store_id, store_name, store_phone, store_address, store_image " +
             "FROM Stores WHERE store_id = ?";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                st.setStore_address(rs.getString("store_address"));
                st.setStore_phone(rs.getString("store_phone"));
                st.setStore_image(rs.getString("store_image"));
                st.setStore_name(rs.getString("store_name"));
                st.setUser_id(rs.getInt("store_id"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return st;
    }
    public boolean changePassword(String password, String user_id) {
        String sql = "UPDATE Account SET password = ? WHERE user_id = ?";
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
        String sql = "SELECT * FROM Account WHERE username = ? AND password = ?";
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
public void updateStore(Store store) {
        String sql = "UPDATE Stores SET store_name = ?, store_phone = ?, store_address = ?, store_image = ? WHERE store_id = ?";

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, store.getStore_name());
            ps.setString(2, store.getStore_phone());
            ps.setString(3, store.getStore_address());
            ps.setString(4, store.getStore_image());
            ps.setInt(5, store.getUser_id());
            int x = ps.executeUpdate();
            if (x > 0) {
                System.out.println("Information store update successfully!");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public boolean checkIsActive(Account account) {
        String sql = "SELECT * FROM Account WHERE username = ? AND password = ? and status = 1";
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

    public User getUser(String username, String password) {
        String sql = "SELECT * FROM Users "
                + "JOIN Account ON Users.user_id = Account.user_id "
                + "WHERE username = ? AND password = ? AND status = 1";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int user_id = rs.getInt(1);
                String fullname = rs.getNString(2);
                String phoneNumber = rs.getString(3);
                String email = rs.getString(4);
                int gender = rs.getInt(5);
                String address = rs.getNString(6);
                Date DOB = rs.getDate(7);
                String image = rs.getString(8);
                Date startDate = rs.getDate(13);
                boolean auth = rs.getBoolean(14);
                Role role = new Role();
                role.setRole_id(rs.getInt(9));
                User u = new User(fullname, email, gender, address, DOB, image);
                u.setUser_id(user_id);
                u.setUsername(username);
                u.setPassword(password);
                u.setStartDate(startDate);
                u.setAuth(auth);
                u.setRole(role);
                u.setPhoneNumber(phoneNumber);
                return u;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void updateUser(User user) {

        String sql = """                    
                     UPDATE [Users]
                     
                     SET fullname = ?, phoneNumber = ?, email = ?, gender = ?, address = ?, DOB = ?, image = ?
                     
                     where user_id = ? """;
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getFullname());
            ps.setString(2, user.getPhoneNumber());
            ps.setString(3, user.getEmail());
            ps.setInt(4, user.getGender());
            ps.setString(5, user.getAddress());
            ps.setDate(6, user.getDOB());
            ps.setString(7, user.getImage());
            ps.setInt(8, user.getUser_id());
            int x = ps.executeUpdate();
            if (x > 0) {
                System.out.println("profile user update successfully!");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public User getUserById(int user_id) {
        User user = new User();
        String sql = "select * from [Users]\n"
                + "where user_id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, user_id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String fullname = rs.getString(2);
                String phoneNumber = rs.getString(3);
                String email = rs.getString(4);
                int gender = rs.getInt(5);
                String address = rs.getString(6);
                Date DOB = rs.getDate(7);
                String image = rs.getString(8);
                user.setFullname(fullname);
                user.setPhoneNumber(phoneNumber);
                user.setEmail(email);
                user.setGender(gender);
                user.setAddress(address);
                user.setDOB(DOB);
                user.setImage(image);
                user.setUser_id(user_id);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return user;
    }

    public void updatePassword(String username, String password) {
        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET [password] = ?\n"
                + " WHERE username = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, password);
            ps.setString(2, username);
            int x = ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class
                    .getName()).log(Level.SEVERE, null, ex);
        }

    }

    public List<User> getAllUserByEmail(String emailFromUser) {
        List<User> ls = new ArrayList();
        String sql = "select [Account].user_id, [Account].username,[Users].email, [Users].Image, [Users].fullname  from [Users] join [Account] on [Users].user_id = [Account].user_id\n"
                + "where [Users].email = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, emailFromUser);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                int user_id = rs.getInt(1);
                String username = rs.getString(2);
                String email = rs.getString(3);
                String image = rs.getString(4);
                String fullname = rs.getString(5);
                user.setEmail(email);
                user.setUser_id(user_id);
                user.setUsername(username);
                user.setImage(image);
                user.setFullname(fullname);
                ls.add(user);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ls;
    }

    public int getNumberOfUser() {
        String sql = "select COUNT(*) as numberOfUser from users";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int numberOfUser = rs.getInt(1);
                return numberOfUser;
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return 0;
    }

    public List<User> getListUserForAdmin() {
        List<User> listUser = new ArrayList<>();
        try {
            String sql = """
            SELECT u.user_id, a.username, u.fullname, u.phoneNumber, u.email,
                   r.role_name, u.address, u.image, u.role_id, a.status,
                   a.startDate, u.dob, u.gender
            FROM users u
            JOIN roles r ON u.role_id = r.role_id
            JOIN account a ON a.user_id = u.user_id
            WHERE u.role_id != 1
        """;
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id_User = rs.getInt("user_id");
                String fullname = rs.getString("fullname");
                String username = rs.getString("username");
                Date startDate = rs.getDate("startDate");
                String email = rs.getString("email");
                String phone = rs.getString("phoneNumber");
                int role_id = rs.getInt("role_id");
                String role_name = rs.getString("role_name");
                String address = rs.getString("address");
                String image = rs.getString("image");
                int status = rs.getInt("status");
                Date dob = rs.getDate("dob");
                int gender = rs.getInt("gender");

                Role role = new Role(role_id, role_name);
                User user = new User();
                user.setUser_id(id_User);
                user.setFullname(fullname);
                user.setPhoneNumber(phone);
                user.setEmail(email);
                user.setAddress(address);
                user.setDOB(dob);
                user.setImage(image);
                user.setGender(gender);
                user.setUsername(username);
                user.setStatus(status);
                user.setStartDate(startDate);
                user.setRole(role);
                listUser.add(user);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return listUser;
    }

    public List<User> getListUserForAdminAZ() {
        List<User> listUser = new ArrayList<>();
        try {
            String sql = """
            SELECT u.user_id, a.username, u.fullname, u.phoneNumber, u.email,
                   r.role_name, u.address, u.image, u.role_id, a.status,
                   a.startDate, u.dob, u.gender
            FROM users u
            JOIN roles r ON u.role_id = r.role_id
            JOIN account a ON a.user_id = u.user_id
            WHERE u.role_id != 1
            ORDER BY u.fullname ASC
        """;
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id_User = rs.getInt("user_id");
                String fullname = rs.getString("fullname");
                String username = rs.getString("username");
                Date startDate = rs.getDate("startDate");
                String email = rs.getString("email");
                String phone = rs.getString("phoneNumber");
                int role_id = rs.getInt("role_id");
                String role_name = rs.getString("role_name");
                String address = rs.getString("address");
                String image = rs.getString("image");
                int status = rs.getInt("status");
                Date dob = rs.getDate("dob");
                int gender = rs.getInt("gender");

                Role role = new Role(role_id, role_name);
                User user = new User(fullname, email, gender, address, dob, image);
                user.setPhoneNumber(phone);
                user.setUser_id(id_User);
                user.setUsername(username);
                user.setStatus(status);
                user.setStartDate(startDate);
                user.setRole(role);
                listUser.add(user);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return listUser;
    }

    public List<User> getListUserForAdminZA() {
        List<User> listUser = new ArrayList<>();
        try {
            String sql = """
            SELECT u.user_id, a.username, u.fullname, u.phoneNumber, u.email,
                   r.role_name, u.address, u.image, u.role_id, a.status,
                   a.startDate, u.dob, u.gender
            FROM users u
            JOIN roles r ON u.role_id = r.role_id
            JOIN account a ON a.user_id = u.user_id
            WHERE u.role_id != 1
            ORDER BY u.fullname DESC
        """;
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id_User = rs.getInt("user_id");
                String fullname = rs.getString("fullname");
                String username = rs.getString("username");
                Date startDate = rs.getDate("startDate");
                String email = rs.getString("email");
                String phone = rs.getString("phoneNumber");
                int role_id = rs.getInt("role_id");
                String role_name = rs.getString("role_name");
                String address = rs.getString("address");
                String image = rs.getString("image");
                int status = rs.getInt("status");
                Date dob = rs.getDate("dob");
                int gender = rs.getInt("gender");

                Role role = new Role(role_id, role_name);
                User user = new User(fullname, email, gender, address, dob, image);
                user.setPhoneNumber(phone);
                user.setUser_id(id_User);
                user.setUsername(username);
                user.setStatus(status);
                user.setStartDate(startDate);
                user.setRole(role);
                listUser.add(user);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return listUser;
    }

}
