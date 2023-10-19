<%-- 
    Document   : book
    Created on : Sep 20, 2023, 11:09:03 AM
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
                    <h1 class="text-center fs-1">Book Form</h1>
                    <%
                        String aadharno=session.getAttribute("ano").toString();
                        DbManager dm=new DbManager();
                        String query="select * from farmerinfo where aadharno='"+aadharno+"'";
                        ResultSet rs=dm.select(query);
                        if(rs.next())
                        {
                    %>
                    <form class="form-control" method="post" action="admincontroller.jsp">
                        <input type="hidden" name="page" value="book"/>
                        <table class="table table-bordered" style="margin: auto; width: 70%;">
                            <tr>
                                <td>Registration Id</td>
                                <td>
                                    <input type="text" name="regid" value="<%=rs.getString("regid")%>" class="form-control" readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td>Farmer Name</td>
                                <td>
                                    <input type="text" name="name" value="<%=rs.getString("name")%>" class="form-control" readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td>Village</td>
                                <td>
                                    <input type="text" name="village" value="<%=rs.getString("village")%>" class="form-control" readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td>Post</td>
                                <td><input type="text" name="post" value="<%=rs.getString("post")%>" class="form-control" readonly/></td>
                            </tr>
                            <tr>
                                <td>District</td>
                                <td><input type="text" name="district" value="<%=rs.getString("district")%>" class="form-control" readonly/></td>
                            </tr>
                            <tr>
                                <td>State</td>
                                <td>
                                    <input type="text" name="state" value="<%=rs.getString("state")%>" class="form-control" readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td>Pincode</td>
                                <td>
                                    <input type="text" name="pincode" value="<%=rs.getString("pincode")%>" class="form-control" readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td>Contact No</td>
                                <td>
                                    <input type="text" name="contactno" value="<%=rs.getString("contactno")%>" class="form-control" readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td>AAdhar No</td>
                                <td>
                                    <input type="text" name="aadharno" value="<%=rs.getString("aadharno")%>" class="form-control" readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td>No Of Packet</td>
                                <td>
                                    <input type="text" name="noofpacket"  class="form-control" required/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Duration in month</td>
                                <td>
                                    <input type="text" name="duration"  class="form-control" required />
                                </td>
                            </tr>
                            <tr>
                                <td> Enter Rate</td>
                                <td>
                                    <input type="number" name="rate" class="form-control" required/>
                                </td>
                            </tr>
                            <tr>
                                <td>Enter Advance amount</td>
                                <td>
                                    <input type="nummber" name="advanceamt" class="form-control" required/>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button class="btn btn-success">Submit</button>
                                </td>
                            </tr>
                        </table>
                    </form>
                    <%}%>
                </div>
            </div>

            <!--header section start-->
            <jsp:include page="footer.jsp"/>
            <!--header section end-->

        </div>
    </body>
</html>

<% }%>
