package com.example.lecture_jsp;
import java.sql.*;

public class DBConnecter {
    // DB Driver
    String dbDriver = "com.mysql.jdbc.Driver";

    // DB URL
    // IP:PORT/스키마
    String dbUrl = "jdbc:mysql://localhost:8080/dbName";

    // DB ID/PW
    String dbUser = "userId";
    String dbPassword = "userPassword";
    Connection dbconn = null;

    public void dbConnection()
    {
        Connection connection = null;

        try
        {
            Class.forName(dbDriver);
            connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
            dbconn = connection;

            System.out.println("DB Connection [성공]");
        }
        catch (SQLException e)
        {
            System.out.println("DB Connection [실패]");
            e.printStackTrace();
        }
        catch (ClassNotFoundException e)
        {
            System.out.println("DB Connection [실패]");
            e.printStackTrace();
        }
    }
}
