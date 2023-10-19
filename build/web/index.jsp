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
        <title>Farmer Merchant Integration</title>
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
                    <div class="col-sm-8 bg-danger" style="min-height:600px;"></div>
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
