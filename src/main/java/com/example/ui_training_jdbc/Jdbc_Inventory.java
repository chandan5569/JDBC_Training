package com.example.ui_training_jdbc;

import java.sql.*;
import java.text.SimpleDateFormat;

public class Jdbc_Inventory {

    public static void main(String[] args) throws ClassNotFoundException, SQLException {

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sakila","root","chandan@12");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from inventory");

        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        while (rs.next()){
            Date d = rs.getDate(4);
            System.out.println(rs.getInt(1)+" "+rs.getInt(2)+" "+rs.getInt(3)+" "+format.format(d));
        }
        con.close();

    }
}
