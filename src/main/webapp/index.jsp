<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<body bgcolor="#f4a460">

<%
   int i = Integer.parseInt(request.getParameter("num1"));
   int j= Integer.parseInt(request.getParameter("num2"));
   int k = i+j;
%>
Addition of two number is: <%= k %>
<br>
   <%
   int a = Integer.parseInt(request.getParameter("num1"));
   int b= Integer.parseInt(request.getParameter("num2"));
   int c = a-b;
%>
Subtraction of two number is: <%= c %>
<br>
   <%
   int x = Integer.parseInt(request.getParameter("num1"));
   int y= Integer.parseInt(request.getParameter("num2"));
   int z = x/y;
%>
Division of two number is: <%= z %>
<br>
   <%
   int aa = Integer.parseInt(request.getParameter("num1"));
   int bb= Integer.parseInt(request.getParameter("num2"));
   int cc = aa*bb;
%>
Multiplication of two number is: <%= cc %>

</html>
</body>

