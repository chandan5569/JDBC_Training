<%--
  Created by IntelliJ IDEA.
  User: vehere
  Date: 14-10-2021
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>

<%
    String Fname = request.getParameter("Fname");
    String Lname = request.getParameter("Lname");
    long num = Integer.parseInt(request.getParameter("phone"));
    String email = request.getParameter("email");

%>

First Name is: <%=Fname%>
Last Name is: <%=Lname%>
Phone Number is: <%=num%>
Email Address is: <%=email%>

</body>
</html>
