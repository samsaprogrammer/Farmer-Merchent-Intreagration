
<%@page import="dbPack.DbManager"%>
<%@page import="java.sql.ResultSet"%>
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
        <title>Admin Portal</title>
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <script src="../js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container-fulid">
            <!--header section start-->
            <jsp:include page="header.jsp"/>
            <!--header section end-->
            <div class="row mt-2">
                <div class="col-sm-12 bg-light" style="">
                <h2 style="color: blue;">Add News & Events</h2>
                <form class="form-group" method="post" action="admincontroller.jsp">
                    <input type="hidden" name="page" value="news"/>
                    <table class="table">
                        <tr>
                            <td>Enter News</td>
                            <td>
                                <textarea name="newstext" class="form-control"></textarea>
                            </td>
                        </tr>
                        
                        <tr>
                            <td></td>
                            <td>
                                <button type="submit" class="btn btn-danger">ADD</button>
                            </td>
                        </tr>
                    </table>
                </form>
                <br>
                <h2 style="text-align: center; color: blue;">News Managment</h2>
                <table class="table table-border" style="width:80%;">
                    <tr>
                        <th>Id</th>
                        <th>News Text</th>
                        <th>Posted Date</th>
                    </tr>
                    
                    <%
                      DbManager dm = new DbManager();
                      ResultSet rs= dm.select("select * from news");
                      while(rs.next())
                      {
                    %>
                    <tr>
                        <td><%=rs.getInt("id")%></td>
                        <td><%=rs.getString("newstext")%></td>
                        <td><%=rs.getString("postdate")%></td>
                        <td>
                            <a href="deletenews.jsp?id=<%=rs.getInt("id")%>">
                                <button class="btn btn-danger">Delete</button>
                            </a>
                        </td>
                    </tr>
                    <%}%>
                </table>
            </div>

            <!--header section start-->
            <jsp:include page="footer.jsp"/>
            <!--header section end-->

        </div>
    </body>
</html>

<% }%>
