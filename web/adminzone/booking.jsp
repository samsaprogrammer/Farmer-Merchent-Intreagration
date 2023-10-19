

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
                    <h1 class="text-center fs-1">Farmer List</h1>
                    <table class="table table-bordered">
                        <tr>
                            <th>Registration id</th>
                            <th>Name</th>
                            <th>Village</th>
                            <th>Post</th>
                            <th>District</th>
                            <th>State</th>
                            <th>Pincode</th>
                            <th>Contact No</th>
                            <th>Aadhar No</th>
                            <th>Book</th>
                            <th>View</th>
                        </tr>
                        <%
                          DbManager dm =new DbManager();
                          ResultSet rs=dm.select("select * from farmerinfo");
                          while(rs.next())
                          {
                        %>
                          
                        <tr>
                            <td><%=rs.getString("regid")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("village")%></td>
                            <td><%=rs.getString("post")%></td>
                            <td><%=rs.getString("district")%></td>
                            <td><%=rs.getString("state")%></td>
                            <td><%=rs.getString("pincode")%></td>
                            <td><%=rs.getString("contactno")%></td>
                            <td><%=rs.getString("aadharno")%></td>
                            <td>
                                <a href="validate.jsp?ano=<%=rs.getString("aadharno")%>">
                                    <button class="btn btn-success">Book</button>
                                </a>
                            </td>
                            <td>
                                <a href="view.jsp?ano=<%=rs.getString("aadharno")%>">
                                    <button class="btn btn-primary">View</button>
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
