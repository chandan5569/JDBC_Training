package com.example.ui_training_jdbc;

import java.sql.*;
public class JdbcConnect_Address {
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sakila","root","chandan@12");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from address");

        //Getting all the data from the table.

        while (rs.next()){
            System.out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getInt(5)+rs.getInt(6)+" "+rs.getString(7));
        }
        con.close();
    }
}
