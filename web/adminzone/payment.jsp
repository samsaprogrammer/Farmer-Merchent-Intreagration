<%-- 
    Document   : payment
    Created on : Sep 20, 2023, 9:43:33 PM
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
                    <h1 class="text-center text-danger">Do Payment</h1>
                    <%
                      DbManager dm=new DbManager();
                      String ano=request.getParameter("ano");
                      String query="select * from booking where aadharno='"+ano+"'";
                      ResultSet rs=dm.select(query);
                      if(rs.next())
                      {
                    %>
                    <form class="form-group" method="post" action="admincontroller.jsp">
                        <input type="hidden" name="page" value="payment"/>
                        <table class="table table-bordered" style="width: 60%; margin: auto;">
                            <tr>
                                <td>Aadhar No</td>
                                <td>
                                    <input type="text" name="aadharno" value="<%=rs.getString("aadharno")%>" class="form-control" readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td>Total Amount</td>
                                <td>
                                    <input type="number" name="totalamt" value="<%=rs.getString("totalamt")%>" class="form-control" readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td>Rest Amount</td>
                                <td>
                                    <input type="number" name="restamt" value="<%=rs.getString("restamt")%>" class="form-control" readonly/>
                                </td>
                            </tr>
                            <tr>
                                <td>Pay Amount</td>
                                <td>
                                    <input type="number" name="payamt" class="form-control"/>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <button type="submit" class="btn btn-success">Pay</button>
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

