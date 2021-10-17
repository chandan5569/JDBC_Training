<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<body>
<%
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection con= null;
    try {
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sakila","root","chandan@12");
    } catch (SQLException e) {
        e.printStackTrace();
    }
    assert con != null;
    Statement stmt= null;
    try {
        stmt = con.createStatement();
    } catch (SQLException e) {
        e.printStackTrace();
    }
    ResultSet rs= null;
    try {
        assert stmt != null;
        rs = stmt.executeQuery("select * from actor");
    } catch (SQLException e) {
        e.printStackTrace();
    }
    SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    while(true) {
        assert rs != null;
        try {
            if (!rs.next()) break;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        Date d = null;
        try {
            d = rs.getDate(4);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            System.out.println(rs.getInt(1) + "  " + rs.getString(2) + "  " + rs.getString(3)+" "+format.format(d));
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>
</body>
</html>
