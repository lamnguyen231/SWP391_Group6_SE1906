package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class dbConfig {

    protected static Connection con = null;
    PreparedStatement ps = null; // Prepare the SQL query
    ResultSet rs = null; // Receive the result
    private String username = "root"; // Change to your MySQL username
    private String password = "123"; // Change to your MySQL password
    private String uri = "jdbc:mysql://localhost:3306/tikilazapee?useSSL=true&serverTimezone=UTC";
    private String driver = "com.mysql.cj.jdbc.Driver";

    public dbConfig() {
        if (con == null) {
            try {
                Class.forName(driver);
                con = DriverManager.getConnection(uri, username, password);
                System.out.println("Connected to MySQL successfully!");
            } catch (ClassNotFoundException | SQLException ex) {
                Logger.getLogger(dbConfig.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public static void main(String[] args) {
        dbConfig db = new dbConfig();
    }
}
