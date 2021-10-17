package com.example.ui_training_jdbc;

import java.sql.*;
import java.text.SimpleDateFormat;

public class JdbcConnect {

    public static void main(String args[]){
        try{

            //Register the driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            //passing the url, id, password.
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/sakila","root","chandan@12");

            Statement stmt=con.createStatement();

            //firing the query.

            ResultSet rs=stmt.executeQuery("select * from actor where actor.actor_id >6");

            //formatting the date.
            SimpleDateFormat format = new SimpleDateFormat("YYYY-MM-DD HH:mm:ss");

            while(rs.next()) {
                Date d = rs.getDate(4);
                System.out.println(rs.getInt(1) + "  " + rs.getString(2) + "  " + rs.getString(3)+" "+format.format(d));
            }
            con.close();
        }catch(Exception e){ System.out.println(e);}
    }
}
