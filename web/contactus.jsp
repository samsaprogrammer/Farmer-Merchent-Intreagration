<%-- 
    Document   : contactus
    Created on : Sep 12, 2023, 9:57:36 AM
    Author     : Samsa
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
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
                        <h2 style="text-align:center; color:blue;">Enquiry Form</h2>
                        <form class="form-group" method="post" action="controller.jsp">
                            <input type="hidden" name="page" value="contactus"/>
                            <table class="table" style="width:80%; margin: auto;">
                                <tr>
                                    <td>Enter Name</td>
                                    <td>
                                        <input type="text" name="name" class="form-control"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Select Gender</td>
                                    <td>
                                        <input type="radio" name="gender" value="Male" class="form-check-input"/>Male
                                        <input type="radio" name="gender" value="Female" class="form-check-input"/>Female
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter Address</td>
                                    <td>
                                        <textarea name="address" class="form-control"></textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter Contact No</td>
                                    <td>
                                        <input type="text" name="contactno" class="form-control" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter Email Adderss</td>
                                    <td>
                                        <input type="email" name="emailaddress" class="form-control" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Enter Enquiry Text</td>
                                    <td>
                                        <textarea name="enquirytext" class="form-control"></textarea>
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

