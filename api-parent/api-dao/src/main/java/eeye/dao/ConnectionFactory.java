package eeye.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
    public static Connection getConnection() throws ClassNotFoundException{
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection("jdbc:mysql://localhost/kd", "root", "");
        }catch (SQLException e){
            e.printStackTrace();
            throw new ClassNotFoundException ("Nao foi possivel conectar com o banco."); 
        }
    }
}
    