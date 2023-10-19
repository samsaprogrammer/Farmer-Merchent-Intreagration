

<%@page import="java.sql.ResultSet"%>
<%@page import="dbPack.DbManager"%>
<%

    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enquiry</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container-fulid">
            <!--header section start-->
            <jsp:include page="header.jsp"/>
            <!--header section end-->
            <div class="row mt-2">
                <div class="col-sm-12 bg-light" style="min-height: 600px;">
                    <h2 class="text-center ">Enquiry Management</h2>
                    <table class="table">
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Gender</th>
                            <th>Adderss</th>
                            <th>Contact No</th>
                            <th>Email id</th>
                            <th>Enquiry textId</th>
                            <th>Posted Date</th>
                        </tr>
                        <%                            
                            DbManager dm = new DbManager();
                            String query = "select * from enquiry";
                            ResultSet rs = dm.select(query);
                            while (rs.next()) {
                        %>

                        <tr>
                            <td><%=rs.getInt("id")%></td>
                            <td><%= rs.getString("name")%></td>
                            <td><%= rs.getString("gender")%></td>
                            <td><%= rs.getString("address")%></td>
                            <td><%= rs.getString("contactno")%></td>
                            <td><%= rs.getString("emailaddress")%></td>
                            <td><%= rs.getString("enquirytext")%></td>
                            <td><%= rs.getString("enquirydate")%></td>
                            <td>
                                <a href="delenq.jsp?id=<%=rs.getInt("id")%>">
                                    <button class="btn btn-danger">Delete</button>
                                </a>
                            </td>
                        </tr>

                        <%}%>
                    </table>
                </div>
            </div>

            <!--header section start-->
            <jsp:include page="footer.jsp"/>
            <!--header section end-->

        </div>
    </body>
</html>

<% }%>
