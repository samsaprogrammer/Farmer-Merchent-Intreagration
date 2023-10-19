<%-- 
    Document   : logout
    Created on : Sep 16, 2023, 10:50:30 AM
    Author     : Samsa
--%>
<%
  session.invalidate();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log out</title>
        <script>
            function logout(){
                window.history.forward();
                window.setTimeout("window.location.href='../login.jsp'",1000);
            }
        </script>
    </head>
    <body class="bg-dark" onload="logout()">
        
    </body>
</html>
