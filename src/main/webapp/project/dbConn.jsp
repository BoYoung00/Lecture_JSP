<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String dbDriver = "com.mysql.cj.jdbc.Driver";
    String dbUrl = "jdbc:mysql://localhost:3306/bc_db";
    String dbUser = "root";
    String dbPassword = "rlaqhdud2@";

    Connection connection;

    try {
        Class.forName(dbDriver);
        connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

        request.setCharacterEncoding("UTF-8");

        session.setAttribute("dbConnection", connection);

        System.out.println("DB Connection [성공]");

    } catch (SQLException | ClassNotFoundException e) {
        System.out.println("DB Connection [실패]");
        e.printStackTrace();
    }
%>
