<%-- 
    Document   : output
    Created on : 07 Mar 2023, 6:10:22 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Outcome Page</title>
    </head>
    <body>
        <h1>Outcome</h1>
        <%
            Integer num1 = Integer.parseInt((String)request.getAttribute("num1"));
            Integer num2 = Integer.parseInt((String)request.getParameter("num2"));
            Character op = ((String)request.getAttribute("operator")).charAt(0);
            String result = (String)request.getAttribute("result");
        %>
        <p>
            <%=num1%> <%=op%> <%=num2%> = <%=result%>.
            <br>
            Please click <a href="index.html">here</a> to go back to the main page.
        </p>
    </body>
</html>
