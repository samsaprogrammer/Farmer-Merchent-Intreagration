<%-- 
    Document   : index
    Created on : Sep 10, 2023, 10:07:25 AM
    Author     : Samsa
    College    : Govt Polytechnic Mahoba
    Branch     : Information Technology
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin login</title>
        <link href="css/bootstrap.css" rel="stylesheet"/>
        <script src="js/bootstrap.bundle.js"></script>
    </head>
    <body>
        <div class="container-fulid">
            <!--Outer section start-->

            <!--Header.jsp section start-->
            <jsp:include page="header.jsp"/>
            <!--Header.jsp section end-->


            <!-- Main section start-->
            <div class="container">
                <div class="row mt-4">
                    <div class="col-sm-4 bg-info" style="min-height:600px;"></div>
                    <div class="col-sm-8 bg-light" style="min-height:600px;">
                        <h2 style="text-align:center; color:blue;">ADMIN LOGin</h2>
                        <form class="form-group" method="post" action="controller.jsp">
                            <input type="hidden" name="page" value="login"/>
                            <table class="table" style="width:80%; margin: auto;">
                                <tr>
                                    <td>Enter User id</td>
                                    <td>
                                        <input type="text" name="userid" class="form-control"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter Password</td>
                                    <td>
                                        <input type="password" name="password" class="form-control"/>
                                    </td>
                                </tr>

                                <tr>
                                    <td></td>
                                    <td>
                                        <button type="submit" class="btn btn-warning">Submit</button>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
            <!-- main section end-->


            <!--Footer.jsp section start-->
            <jsp:include page="footer.jsp"/>
            <!--Footer.jsp section end-->


            <!--Outer section end-->
        </div>
    </body>
</html>
