<%-- 
    Document   : closing
    Created on : Sep 20, 2023, 9:08:27 PM
    Author     : Samsa
--%>



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
        <title>Admin Protel</title>
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
                    <h1 class="text-success text-center">Manage Booking</h1>
                    <table class="table table-borderedr">
                        <tr>
                            <th>Registration Id</th>
                            <th>Name</th>
                            <th>Aadhar No</th>
                            <th>No Of Packet</th>
                            <th>Duration</th>
                            <th>Rate</th>
                            <th>Total Amount</th>
                            <th>Advance Booking</th>
                            <th>Rest Amount</th>
                            <th>Pay</th>
                        </tr>
                        <%
                          DbManager dm=new DbManager();
                          ResultSet rs=dm.select("select * from booking");
                          while(rs.next())
                          {
                        %>
                        <tr>
                            <td><%=rs.getString("regid")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("aadharno")%></td>
                            <td><%=rs.getString("noofpacket")%></td>
                            <td><%=rs.getString("duration")%></td>
                            <td><%=rs.getString("rate")%></td>
                            <td><%=rs.getString("totalamt")%></td>
                            <td><%=rs.getString("advanceamt")%></td>
                            <td><%=rs.getString("restamt")%></td>
                            <td>
                                <a href="payment.jsp?ano=<%=rs.getString("aadharno")%>">
                                    <button class="btn btn-success">Pay</button>
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

